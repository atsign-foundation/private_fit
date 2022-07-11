import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/home/i_home_facade.dart';

@lazySingleton
class SetUserNameUseCase {
  SetUserNameUseCase(this._iHomeFacade);

  final IHomeFacade _iHomeFacade;

  Future<Either<OnBoardingFailure, bool>> call(String username) async =>
      _iHomeFacade.setUsername(username);
}
