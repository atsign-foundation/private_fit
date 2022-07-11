part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.username(Either<OnBoardingFailure, bool> result) =
      _Username;
}
