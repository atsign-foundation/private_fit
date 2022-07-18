import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/settings/i_settings_facade.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';

@LazySingleton(as: ISettingsFacade)
class SettingsFacade implements ISettingsFacade {
  AtClientManager atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();
  final AtSignLogger _logger = AtSignLogger('Settings facade');

  @override
  Future<Either<OnBoardingFailure, Unit>> setUsername(
      UserNameModel userName) async {
    final _nameKey = Keys.nameKey
      ..sharedWith = atClientManager.atClient.getCurrentAtSign()
      ..sharedBy = atClientManager.atClient.getCurrentAtSign()
      ..value = Value(
        value: userName.username.getOrCrash(),
        type: 'username',
        labelName: 'User name',
      );

    try {
      _logger.info('Setting a username $userName');
      await _sdkServices.put(_nameKey);

      return right(unit);
    } catch (e) {
      return left(const OnBoardingFailure.failToSetUsername());
    }
  }

  @override
  Future<String?> getName() async {
    return _sdkServices.getName();
  }
}
