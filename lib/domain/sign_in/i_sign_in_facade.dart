import 'package:at_client_mobile/at_client_mobile.dart';
// import 'package:at_onboarding_flutter/utils/response_status.dart';
import 'package:at_server_status/at_server_status.dart';
import 'package:dartz/dartz.dart';

import 'package:private_fit/domain/core/at_platform_failures.dart';

abstract class ISignInFacade {
  void placeHolder();
  // Future<Either,<Map<String, bool?>>> getAtsignsWithStatus();
  Future<Either<AtPlatformFailure, Map<String, bool?>>> getAtsignsWithStatus();

  Future<Either<AtPlatformFailure, Unit>> setAtClientPreference(
    AtClientPreference preference,
  );

  Future<Either<AtPlatformFailure, AtClientPreference>> initAtClientPreference(
    String atSign,
  );

  Future<Either<AtPlatformFailure, bool>> onBoard();

  Future<AtStatus> getAtSignStatus(String atSign);
  Future<String> readAtKeysFile(String filePath);
  // Future<ResponseStatus> onboardWithAtKeys(String atSign, String keysData);
}
