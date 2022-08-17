import 'dart:convert';
import 'dart:io';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/services/onboarding_service.dart';
import 'package:at_onboarding_flutter/utils/response_status.dart';
import 'package:at_server_status/src/model/at_status.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:file_picker/file_picker.dart';
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

  @override
  Future<AtStatus> getAtSignStatus(String atSign) {
    throw UnimplementedError();
  }

  @override
  Future<ResponseStatus> onboardWithAtKeys(
    String atSign,
    String keysData,
  ) async {
    _logger.finer('Onboarding with @sign: $atSign using atKeys file');
    try {
      final status = await _onBoardingServive.authenticate(
        atSign,
        jsonData: keysData,
        decryptKey: json.decode(keysData)[atSign] as String,
      );
      _logger.finer('Onboarding with atKeys file result: $status');

      return status as ResponseStatus;
    } on Exception catch (e, s) {
      _logger.severe('Error onboarding with @sign: $atSign', e, s);
      return ResponseStatus.authFailed;
    }
  }

  @override
  Future<String> readAtKeysFile(String filePath) {
    final Set<PlatformFile> _list = <PlatformFile>{};

    return File(_list.first.path!).readAsString();
  }

  Future<void> login() async {
    readAtKeysFile('filePath')
        .then((atKeysData) => onboardWithAtKeys('atSign', atKeysData));
  }
}
