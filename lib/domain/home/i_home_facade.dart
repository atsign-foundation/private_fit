import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';

abstract class IHomeFacade {
  Option<String> getOnBoardedAtSign();

  Future<Either<AtPlatformFailure, bool>> setUsername(String username);
}
