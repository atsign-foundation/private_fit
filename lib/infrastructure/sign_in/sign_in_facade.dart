import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/services/onboarding_service.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/i_sign_in_facade.dart';
import 'package:private_fit/shared/constants.dart';

@LazySingleton(as: ISignInFacade)
class SignInFacade implements ISignInFacade {
  final AtSignLogger _logger = AtSignLogger('Settings facade');

  final KeyChainManager _keyChainManager = KeyChainManager.getInstance();
  final OnboardingService _onBoardingServive = OnboardingService.getInstance();

  @override
  void placeHolder() {}

  @override
  Future<Either<AtPlatformFailure, Map<String, bool?>>>
      getAtsignsWithStatus() async {
    _logger.info('Looking for an AtSign from the keychain manager');
    try {
      return await _keyChainManager.getAtsignsWithStatus().then(right);
    } catch (e) {
      return left(const AtPlatformFailure.serverError());
    }
  }

  @override
  Future<Either<AtPlatformFailure, Unit>> setAtClientPreference(
    AtClientPreference preference,
  ) async {
    try {
      _logger.info('========Setting AtClient Preferences==============');
      _onBoardingServive.setAtClientPreference = preference;
      return right(unit);
    } catch (e) {
      _logger.severe('Failed to set AtClient Preferences');
      return left(const AtPlatformFailure.serverError());
    }
  }

  @override
  Future<Either<AtPlatformFailure, AtClientPreference>> initAtClientPreference(
    String atSign,
  ) async {
    return getApplicationDocumentsDirectory().then(
      (value) async {
        try {
          _logger.info('======= initializing  atclient preferences ========');
          final _atClientPreference = AtClientPreference()
            ..isLocalStoreRequired = true
            ..commitLogPath = value.path
            ..rootDomain = Constants.rootDomain
            ..namespace = Constants.appNamespace
            ..syncRegex = Constants.syncRegex
            ..privateKey =
                await _keyChainManager.getEncryptionPrivateKey(atSign)
            ..hiveStoragePath = value.path;
          return right(_atClientPreference);
        } catch (e) {
          return left(const AtPlatformFailure.serverError());
        }
      },
    );
  }

  @override
  Future<Either<AtPlatformFailure, bool>> onBoard() async {
    try {
      return _onBoardingServive.onboard().then(right);
    } catch (e) {
      _logger.severe('Failed to onboard this Atsign with :: $e');
      return left(const AtPlatformFailure.failToSetOnBoardData());
    }
  }
}
