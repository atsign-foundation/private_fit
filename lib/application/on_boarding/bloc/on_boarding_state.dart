part of 'on_boarding_bloc.dart';

@freezed
class OnBoardingState with _$OnBoardingState {
  const factory OnBoardingState.initial() = _Initial;
  const factory OnBoardingState.loading(AtClientPreference atClientPreference) =
      _Loading;
  const factory OnBoardingState.failure(AtPlatformFailure onBoardingFailure) =
      _Failure;
  const factory OnBoardingState.loadSuccess() = _LoadSuccess;
  const factory OnBoardingState.onBoardingError({Object? error}) =
      _onBoardingError;
}
