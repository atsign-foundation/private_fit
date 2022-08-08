import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';

import 'package:private_fit/domain/core/at_platform_failures.dart';

abstract class ISignInFacade {
  void placeHolder();
  // Future<Either,<Map<String, bool?>>> getAtsignsWithStatus();
  Future<Either<AtPlatformFailure, Map<String, bool?>>> getAtsignsWithStatus();

  Future<Either<AtPlatformFailure, Unit>> setAtClientPreference(
    AtClientPreference preference,
  );
}
