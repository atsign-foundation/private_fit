import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';

abstract class ISettingsFacade {
  Future<Either<OnBoardingFailure, Unit>> setUsername(UserNameModel username);
  Future<String?> getName();
}
