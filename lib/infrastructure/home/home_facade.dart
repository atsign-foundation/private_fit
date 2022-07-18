import 'dart:convert';
import 'dart:io';
import 'dart:typed_data';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_server_status/at_server_status.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:injectable/injectable.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/home/i_home_facade.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/shared/constants.dart';

@Injectable(as: IHomeFacade)
class HomeFacade implements IHomeFacade {
  final AtSignLogger _logger = AtSignLogger('Home services');
  Map<String?, AtClientService> atClientServiceMap = {};
  AtClientManager atClientManager = AtClientManager.getInstance();

  final SdkServices _sdkServices = SdkServices.getInstance();

  @override
  Option<String> getOnBoardedAtSign() {
    final _currentAtSign =
        AtClientManager.getInstance().atClient.getCurrentAtSign();
    // _currentAtSign = currentAtSign!;
    return optionOf(_currentAtSign);
  }

  @override
  Future<Either<OnBoardingFailure, bool>> setUsername(String userName) async {
    final _nameKey = Keys.nameKey
      ..sharedWith = atClientManager.atClient.getCurrentAtSign()
      ..sharedBy = atClientManager.atClient.getCurrentAtSign()
      ..value = Value(
        value: userName,
        type: 'username',
        labelName: 'User name',
      );

    try {
      _logger.info('Setting a username $userName');
      await _sdkServices.put(_nameKey);

      return right(true);
    } catch (e) {
      return left(const OnBoardingFailure.failToSetUsername());
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
  Future<void> startMonitor() async {
    _logger.finer('Starting app notification monitor');
    atClientManager.notificationService
        .subscribe(regex: Constants.syncRegex)
        .listen((AtNotification monitorNotification) async {
      try {
        _logger.finer('Listening to notification: ${monitorNotification.id}');
        if (!(await atClientManager.syncService.isInSync())) {
          // syncData();
        }
        await _listenToNotifications(monitorNotification);
        // await getReports();
      } catch (e) {
        _logger.severe(e.toString());
      }
    });
  }

  Future<void> _listenToNotifications(
    AtNotification monitorNotification,
  ) async {
    _logger.finer('Listening to notification: ${monitorNotification.id}');
    await _showNotification(monitorNotification);
  }

  Future<void> _showNotification(AtNotification atNotification) async {
    _logger.finer('inside show notification...');
    const platformChannelSpecifics = NotificationDetails(
      android: AndroidNotificationDetails(
        'CHANNEL_ID',
        'CHANNEL_NAME',
        channelDescription: 'CHANNEL_DESCRIPTION',
        importance: Importance.max,
        priority: Priority.high,
        showWhen: false,
      ),
      iOS: IOSNotificationDetails(),
    );
    // if (atNotification.key.contains('report')) {
    //   await _notificationsPlugin.show(
    //     0,//todo(kzawadi): This need to wait for admin to be configured
    //     'Report',
    //     atNotification.from + ' submitted feedback.',
    //     platformChannelSpecifics,
    //     payload: jsonEncode(atNotification.toJson()),
    //   );
    // }
  }

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
      final list = await atClientManager.atClient.getAtKeys(
        regex: 'profilepic',
        sharedBy: atClientManager.atClient.getCurrentAtSign(),
      );
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
}
