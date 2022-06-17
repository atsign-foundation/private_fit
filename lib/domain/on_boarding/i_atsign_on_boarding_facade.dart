import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/on_boarding/onboarding_failures.dart';

abstract class IAtsignOnBoardingFacade {
  Future<Either<OnBoardingFailure, AtClientPreference>>
      loadAtClientPreference();

  Option<String> getOnBoardedAtSign();

  Future<Either<OnBoardingFailure, Unit>> onBoardDataWhenSuccessful(
    Map<String?, AtClientService> value,
    String? atSign,
  );
}
