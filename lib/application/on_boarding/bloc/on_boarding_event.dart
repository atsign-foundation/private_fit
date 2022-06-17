part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingEvent with _$OnBoardingEvent {
  // const factory OnBoardingEvent.started() = _Started;
  const factory OnBoardingEvent.onBoardingAtSign() = _OnBoardingAtSign;
  const factory OnBoardingEvent.atSignOnBoardingSucces(
    Map<String?, AtClientService> value,
    String? atsign,
  ) = _AtSignOnBoardingSucces;
  const factory OnBoardingEvent.onBoardingError(Object? object) =
      _OnBoardingError;
}
