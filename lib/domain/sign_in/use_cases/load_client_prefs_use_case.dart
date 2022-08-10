import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/i_sign_in_facade.dart';

///This is a use case which return an [Either] of [AtPlatformFailure] or
///the instance of [AtClientPreference] and in [OnBoardingBloc] we can handle
///the failure by emitting appropriate [OnBoardingState]'s
///this way it made it very easier to handle success and failures and do
///something logic wise from either outcomes
@injectable
class LoadAtClientPreferenceUseCase {
  LoadAtClientPreferenceUseCase(this._iSignInFacade);

  final ISignInFacade _iSignInFacade;

  Future<Either<AtPlatformFailure, AtClientPreference>> call(String atSign) =>
      _iSignInFacade.initAtClientPreference(atSign);
}
