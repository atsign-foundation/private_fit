// 🎯 Dart imports:
// ignore_for_file: avoid_dynamic_calls

import 'dart:convert';

// 📦 Package imports:
// ignore: implementation_imports
import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/services/onboarding_service.dart';
import 'package:at_server_status/at_server_status.dart';
import 'package:at_utils/at_utils.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:private_fit/domain/core/key_model.dart';
import 'package:private_fit/shared/constants.dart';

// 🌎 Project imports:

class SdkServices {
  factory SdkServices.getInstance() {
    return _singleton;
  }

  SdkServices._internal();
  final AtSignLogger _logger = AtSignLogger('AtPlatform services');

  /// singleton with getInstance()
  static final SdkServices _singleton = SdkServices._internal();

  AtClientManager atClientManager = AtClientManager.getInstance();

  /// Get @sign status
  Future<AtStatus> getAtSignStatus(String atSign) async => AtStatusImpl(
        rootUrl: Constants.rootDomain,
      ).get(atSign);

  /// Function to get [AtClientPreference].
  Future<AtClientPreference> getAtClientPreferences() async {
    final appDirPath = (await getApplicationDocumentsDirectory()).path;
    return AtClientPreference()
      ..commitLogPath = p.join(appDirPath, 'commitLog')
      ..hiveStoragePath = p.join(appDirPath, 'hiveStorage')
      ..downloadPath = p.join(appDirPath, 'downloads')
      ..syncRegex = Constants.syncRegex
      ..isLocalStoreRequired = true
      ..syncPageLimit = 500
      ..rootDomain = Constants.rootDomain
      ..namespace = Constants.appNamespace;
  }

  // Future<bool> checkUserStatus(String atSign) async {
  //   List<String>? atSignsList;
  //   atSignsList =
  //       await KeyChainManager.getInstance().getAtSignListFromKeychain();
  //   atSignsList ??= <String>[];
  //   try {
  //     final s = await getAtSignStatus(atSign)
  //         .timeout(const Duration(seconds: 30), onTimeout: () {
  //       _logger.warning('Timeout checking @sign status: $atSign');
  //       throw 'timeOut';
  //     });
  //     var atSignExist = atSignsList.contains(atSign);
  //     s.serverStatus == ServerStatus.teapot ? atSignExist = false :
  // atSignExist;
  //     return atSignExist;
  //   } on Exception catch (e, s) {
  //     _logger.severe('Error checking user status: $atSign', e, s);
  //     return false;
  //   }
  // }

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

  /// Check if user is onboarded and returns the result.
  Future<bool> checkIfAtSignExistInDevice(
    String atSign,
    AtClientPreference preference,
  ) async {
    _logger.finer('Checking if @sign exist in device: $atSign');
    final isExists = await (OnboardingService.getInstance()
          ..setAtsign = atSign
          ..setAtClientPreference = preference)
        .isExistingAtsign(atSign);
    _logger.finer('@sign exist in device: $isExists');
    return isExists;
  }

  String? get currentAtSign =>
      AtUtils.formatAtSign(atClientManager.atClient.getCurrentAtSign());

  Future<String?> getProPic() async {
    _logger.finer('Fetching profile pic');
    try {
      final list = await atClientManager.atClient
          .getAtKeys(regex: 'profilepic', sharedBy: currentAtSign);
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

  Future<String?> getUserName() async {
    _logger.finer('Getting name');
    try {
      final _names = await getAllKeys(regex: 'name.${Constants.appNamespace}');
      if (_names.isNotEmpty) {
        final dynamic name = await get(PassKey.fromAtKey(_names.first));
        return name as String;
      }
      return null;
    } on Exception catch (e, s) {
      _logger.severe('Error getting name', e, s);
      return null;
    }
  }

  // --------------------- //
  //    CRUD operations    //
  // --------------------- //

  Future<bool> put(PassKey entity) async {
    try {
      //set value
      final dynamic value = entity.isBinary == false
          ? jsonEncode(entity.value?.toJson())
          : entity.value?.value;
      final putResult =
          await atClientManager.atClient.put(entity.toAtKey(), value);
      if (putResult) {
        if (entity.key!.contains('report')) {
          await atClientManager.notificationService
              .notify(
                NotificationParams.forUpdate(
                  entity.toAtKey(),
                  value: entity.value?.value['title'] as String,
                ),
              )
              .then(
                (NotificationResult value) => _logger.finer(
                  'Notification status: ${value.notificationStatusEnum.name}',
                ),
              );
        }
      }
      // syncData();
      return putResult;
    } catch (e, s) {
      _logger.severe('Error while putting data: $e', e, s);
      return false;
    }
  }

  /// Get the value of the key.
  Future<dynamic> get(PassKey entity) async {
    try {
      final _value = await atClientManager.atClient.get(entity.toAtKey());
      return jsonDecode(_value.value as String)['value'];
    } on KeyNotFoundException catch (e, s) {
      _logger.severe('Key not found with message ${e.message}', e, s);
      return null;
    } on FormatException catch (e, s) {
      _logger.severe('FormatError: $e', e, s);
    } on Exception catch (e, s) {
      _logger.severe('Error while getting data, Error: $e', e, s);
      return null;
    }
  }

  Future<bool> delete(String key, [Function? onSyncDone]) async {
    var _keyDeleted = false;
    try {
      final a = await getAllKeys(regex: key);
      if (a.length > 1) {
        _logger
            .severe('Looks like you have more that one key with the keyname');
        return false;
      }
      for (final k in a) {
        _keyDeleted = await atClientManager.atClient.delete(k);
      }
      if (_keyDeleted) {
        _logger.finer('$key deleted successfully');
        // AppServices.syncData(onSyncDone);
      }
      return _keyDeleted;
    } on KeyNotFoundException catch (e, s) {
      _logger.severe('${e.message} to delete it.', e, s);
      return false;
    } on Exception catch (e, s) {
      _logger.severe('Error while deleting data', e, s);
      return false;
    }
  }

  Future<List<AtKey>> getAllKeys({
    String? regex,
    String? sharedBy,
    String? sharedWith,
  }) async {
    try {
      final result = await atClientManager.atClient
          .getAtKeys(regex: regex, sharedBy: sharedBy, sharedWith: sharedWith);
      return result;
    } on Exception catch (e, s) {
      _logger.severe('Error while fetching keys', e, s);
      return <AtKey>[];
    }
  }
}
