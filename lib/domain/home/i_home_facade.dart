import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';

abstract class IHomeFacade {
  Option<String> getOnBoardedAtSign();

  Future<Either<OnBoardingFailure, bool>> setUsername(String username);
  Future<List<AtKey>> getAllKeys(
      {String? regex, String? sharedBy, String? sharedWith});
}