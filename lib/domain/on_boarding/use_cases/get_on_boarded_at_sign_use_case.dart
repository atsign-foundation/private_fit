import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';

///This is a usecase of getting Onboarded @sign
///it return an [Option] of either a [String] @sign or nothing
///using functional programing make it easier to handle its return in UI
@lazySingleton
class GetOnBoardedAtSignUseCase {
  const GetOnBoardedAtSignUseCase(this._iAtsignOnBoardingFacade);

  final IAtsignOnBoardingFacade _iAtsignOnBoardingFacade;

  Option<String> call() => _iAtsignOnBoardingFacade.getOnBoardedAtSign();
}
