import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:shared_preferences/shared_preferences.dart';

abstract class IAtsignOnBoardingFacade {
  Future<Either<AtPlatformFailure, AtClientPreference>>
      loadAtClientPreference();

  Option<String> getOnBoardedAtSign();

  Future<Either<AtPlatformFailure, Unit>> onBoardDataWhenSuccessful(
    Map<String?, AtClientService> value,
    String? atSign,
  );

  static Future<void> checkFirstRun() async {
    final AtSignLogger _logger = AtSignLogger('Interface OnBoarding facade')
      ..finer('Checking for keychain entries to clear');
    final SharedPreferences _prefs = await SharedPreferences.getInstance();
    if (_prefs.getBool('first_run') ?? true) {
      _logger.finer('First run detected. Clearing keychain');
      await KeyChainManager.getInstance().clearKeychainEntries();
      await _prefs.setBool('first_run', false);
    }
  }
}
