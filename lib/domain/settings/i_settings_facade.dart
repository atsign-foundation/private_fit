import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';

abstract class ISettingsFacade {
  Future<Either<AtPlatformFailure, Unit>> setUsername(UserNameModel username);
  Future<Either<AtPlatformFailure, UserNameModel>> getUserName();
}
