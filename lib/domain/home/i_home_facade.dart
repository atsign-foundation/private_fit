import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';

abstract class IHomeFacade {
  Option<String> getOnBoardedAtSign();

  Future<Either<OnBoardingFailure, bool>> setUsername(String username);
}
