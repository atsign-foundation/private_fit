import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';

@injectable
class SetUserNameUseCase {
  SetUserNameUseCase(this._atsignOnBoardingFacade);

  final IAtsignOnBoardingFacade _atsignOnBoardingFacade;

  Future<Either<OnBoardingFailure, bool>> call(String username) =>
      _atsignOnBoardingFacade.setUsername(username);
}
