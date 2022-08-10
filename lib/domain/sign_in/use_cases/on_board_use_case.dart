import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/i_sign_in_facade.dart';

@lazySingleton
class OnBoardUseCase {
  OnBoardUseCase(this._iSignInFacade);

  final ISignInFacade _iSignInFacade;

  Future<Either<AtPlatformFailure, bool>> call() async =>
      _iSignInFacade.onBoard();
}
