import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:at_server_status/at_server_status.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:permission_handler/permission_handler.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/domain/on_boarding/onboarding_failures.dart';
import 'package:private_fit/shared/constants.dart';

/// Implementation of [IAtsignOnBoardingFacade] interface

@Injectable(as: IAtsignOnBoardingFacade)
class OnBoardingAtsignFacade implements IAtsignOnBoardingFacade {
  final AtSignLogger _logger = AtSignLogger('SDK services');
  Map<String?, AtClientService> atClientServiceMap = {};
  AtClientManager atClientManager = AtClientManager.getInstance();

  late String? _currentAtSign;

  @override
  Option<String> getOnBoardedAtSign() {
    final currentAtSign =
        AtClientManager.getInstance().atClient.getCurrentAtSign();
    _currentAtSign = currentAtSign;
    return optionOf(currentAtSign);
  }

  ///This Functional (using functinal programming Haskel like) function
  /// return the [AtClientPreference] instance to be used in [Onboarding]
  /// function also if failures arise (showing a @user an exactly failures
  /// in a nice UI instead of just throwing them as if the @user knows them)
  /// at this stage we delivery them to the [OnBoardingBloc] so it can be party
  /// of App logic
  @override
  Future<Either<OnBoardingFailure, AtClientPreference>>
      loadAtClientPreference() async {
    final appDocumentDirectory =
        await path_provider.getApplicationSupportDirectory();
    final path = appDocumentDirectory.path;
    final _atClientPreference = AtClientPreference()
      ..isLocalStoreRequired = true
      ..commitLogPath = path
      ..rootDomain = Constants.rootDomain
      ..namespace = Constants.appNamespace
      ..syncRegex = Constants.syncRegex
      ..hiveStoragePath = path;
    return right(_atClientPreference);
  }

  @override
  Future<Either<OnBoardingFailure, Unit>> onBoardDataWhenSuccessful(
    Map<String?, AtClientService> v,
    String? atSign,
  ) async =>
      loadAtClientPreference().then(
        (value) => value.fold(
          (l) => left(const OnBoardingFailure.failToSetOnBoardData()),
          (atClientPreference) async {
            await AtClientManager.getInstance().setCurrentAtSign(
              atSign!,
              Constants.appNamespace,
              atClientPreference,
            );
            atClientServiceMap = v;
            await KeychainUtil.makeAtSignPrimary(atSign);
            AtClientManager.getInstance().syncService.sync();
            return right(unit);
          },
        ),
      );

  /// Get @sign status
  Future<AtStatus> getAtSignStatus(String atSign) async => AtStatusImpl(
        rootUrl: Constants.rootDomain,
      ).get(atSign);

  Future<bool> checkUserStatus(String atSign) async {
    List<String>? atSignsList;
    atSignsList =
        await KeyChainManager.getInstance().getAtSignListFromKeychain();
    atSignsList ??= <String>[];
    try {
      final s = await getAtSignStatus(atSign).timeout(
        const Duration(seconds: 30),
        onTimeout: () {
          _logger.warning('Timeout checking @sign status: $atSign');
          throw 'timeOut';
        },
      );
      var atSignExist = atSignsList.contains(atSign);
      s.serverStatus == ServerStatus.teapot ? atSignExist = false : atSignExist;
      return atSignExist;
    } on Exception catch (e, s) {
      _logger.severe('Error checking user status: $atSign', e, s);
      return false;
    }
  }

  /// Checks if any @sign is onboarded and returns the result.
  Future<bool> checkIfUserAlreadyExist() async {
    try {
      _logger.finer('Checking if user already exist...');
      return (await KeyChainManager.getInstance().getAtsignsWithStatus())
          .values
          .contains(true);
    } on Exception catch (e, s) {
      _logger.severe('Error checking if user already exist', e, s);
      return false;
    }
  }

  Future<String?> getProPic() async {
    _logger.finer('Fetching profile pic');
    try {
      final list = await atClientManager.atClient
          .getAtKeys(regex: 'profilepic', sharedBy: _currentAtSign);
      for (final key in list) {
        if (key.key == 'profilepic' &&
            key.namespace == Constants.appNamespace) {
          final img = await atClientManager.atClient.get(key);
          _logger.finer('Got profile pic value');
          return json.decode(img.value as String)['value'] as String;
        }
      }
      _logger.warning('Cannot get profile pic value');
      return null;
    } on Exception catch (e, s) {
      _logger.severe('Error getting profile pic', e, s);
      return null;
    }
  }

  /// This function will read local files as string.
  static Future<String> readLocalfilesAsString(String filePath) async =>
      rootBundle.loadString(filePath);

  /// This function will read local files as bytes.
  static Future<Uint8List> readLocalfilesAsBytes(String filePath) async =>
      (await rootBundle.load(filePath)).buffer.asUint8List();

  /// This function will read local files as bytes.
  static Future<Uint8List> readFilesAsBytes(String filePath) async =>
      File(filePath).readAsBytes();

  /// Check for the list of permissions.
  static Future<bool> checkPermission(List<Permission> permissions) async {
    var _permissionsCount = permissions.length;
    while (_permissionsCount == 0) {
      for (final permission in permissions) {
        if (await permission.status != PermissionStatus.granted) {
          await permission.request();
          _permissionsCount--;
        } else {
          _permissionsCount--;
        }
      }
    }
    return _permissionsCount == 0;
  }

  // startMonitor needs to be called at the beginning of session
  // Future<void> startMonitor() async {
  //   _logger.finer('Starting app notification monitor');
  //   atClientManager.notificationService
  //       .subscribe(regex: Constants.syncRegex)
  //       .listen((AtNotification monitorNotification) async {
  //     try {
  //       _logger.finer('Listening to notification: ${monitorNotification.id}');
  //       if (!(await atClientManager.syncService.isInSync())) {
  //         syncData();
  //       }
  //       await _listenToNotifications(monitorNotification);
  //       await getReports();
  //     } catch (e) {
  //       _logger.severe(e.toString());
  //     }
  //   });
  // }

  /// Sync the data to the server
  // static void syncData([Function? onSyncDone]) {
  //   Future<void> _onSyncData(SyncResult synRes) async {
  //     await _onSuccessCallback(synRes);
  //     if (onSyncDone != null) {
  //       onSyncDone();
  //     }
  //     if (_userData.isAdmin) await AppServices.getReports();
  //   }

  //   _userData.setSyncStatus = SyncStatus.started;
  //   sdkServices.atClientManager.syncService.setOnDone(_onSyncData);
  //   sdkServices.atClientManager.syncService.sync(onDone: _onSyncData);
  // }

  // static Future<void> _listenToNotifications(
  //   AtNotification monitorNotification,
  // ) async {
  //   _logger.finer('Listening to notification: ${monitorNotification.id}');
  //   await _showNotification(monitorNotification);
  // }

  // Future<void> _showNotification(AtNotification atNotification) async {
  //   _logger.finer('inside show notification...');
  //   const platformChannelSpecifics = NotificationDetails(
  //     android: AndroidNotificationDetails(
  //       'CHANNEL_ID',
  //       'CHANNEL_NAME',
  //       channelDescription: 'CHANNEL_DESCRIPTION',
  //       importance: Importance.max,
  //       priority: Priority.high,
  //       showWhen: false,
  //     ),
  //     iOS: IOSNotificationDetails(),
  //   );

  //   if (atNotification.key.contains('report')) {
  //     await _notificationsPlugin.show(
  //       0,
  //       'Report',
  //       atNotification.from + ' submitted feedback.',
  //       platformChannelSpecifics,
  //       payload: jsonEncode(atNotification.toJson()),
  //     );
  //   }
  // }

  // Future<void> getReports() async {
  //   _logger.finer('Fetching Reports');
  //   try {
  //     List<Report> _reports = <Report>[];
  //     List<AtKey> _reportKeys = await sdkServices.getAllKeys(regex: 'report_');
  //     for (AtKey _key in _reportKeys) {
  //       // if (!_key.metadata!.isCached) {
  //       //   _userData.reports = _reports;
  //       //   return;
  //       // }
  //       dynamic _value = await sdkServices.get(PassKey.fromAtKey(_key));
  //       if (_value != null) {
  //         Report _report = Report.fromJson(_value);
  //         _reports.add(_report);
  //       }
  //     }
  //     _reports.sort((Report a, Report b) => b.createdAt.compareTo(a.createdAt));
  //     _reportKeys.clear();
  //     _userData.reports = _reports;
  //   } on Exception catch (e, s) {
  //     _logger.severe('Error fetching reports', e, s);
  //     return;
  //   }
  // }
}
