import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';

@injectable
class OnBoardDataWhenSuccessfulUseCase {
  OnBoardDataWhenSuccessfulUseCase(this._iAtsignOnBoardingFacade);

  final IAtsignOnBoardingFacade _iAtsignOnBoardingFacade;

  void call(
    Map<String?, AtClientService> value,
    String? atSign,
  ) =>
      _iAtsignOnBoardingFacade.onBoardDataWhenSuccessful(value, atSign);
}
