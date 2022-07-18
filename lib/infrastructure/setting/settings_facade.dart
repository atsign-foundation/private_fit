import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/key_model.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/settings/i_settings_facade.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/infrastructure/setting/user_name_dto.dart';
import 'package:private_fit/shared/constants.dart';

@LazySingleton(as: ISettingsFacade)
class SettingsFacade implements ISettingsFacade {
  AtClientManager atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();
  final AtSignLogger _logger = AtSignLogger('Settings facade');

  @override
  Future<Either<AtPlatformFailure, Unit>> setUsername(
    UserNameModel userName,
  ) async {
    final _userNameDto = UserNameDto.fromDomain(userName);
    final _nameKey = Keys.nameKey
      ..sharedWith = atClientManager.atClient.getCurrentAtSign()
      ..sharedBy = atClientManager.atClient.getCurrentAtSign()
      ..value = Value(
        value: _userNameDto.toJson(),
        type: 'username',
        labelName: 'User name',
      );

    try {
      _logger.info('Setting a username $userName');
      await _sdkServices.put(_nameKey);

      return right(unit);
    } catch (e) {
      return left(const AtPlatformFailure.failToSetUsername());
    }
  }

  @override
  Future<Either<AtPlatformFailure, AtValue>> getUserName() async {
    _logger.finer('Getting name');

    return getAllKeys(regex: 'name.${Constants.appNamespace}').then(
      (value) => get(PassKey.fromAtKey(value.first)),
    );

    // return get(PassKey.fromAtKey(_atkeys.first));
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

  /// Get the value of the key.
  Future<Either<AtPlatformFailure, AtValue>> get(PassKey entity) async {
    try {
      final _value = await atClientManager.atClient.get(entity.toAtKey());
      return right(_value);
      // return jsonDecode(_value.value as String)['value'];
    } on KeyNotFoundException catch (e, s) {
      _logger.severe('Key not found with message ${e.message}', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
    } on FormatException catch (e, s) {
      _logger.severe('FormatError: $e', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
    } on Exception catch (e, s) {
      _logger.severe('Error while getting data, Error: $e', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
    }
  }
}
