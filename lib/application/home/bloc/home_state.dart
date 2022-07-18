part of 'home_bloc.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState.initial() = _Initial;
  const factory HomeState.username(Either<AtPlatformFailure, bool> result) =
      _Username;
}
