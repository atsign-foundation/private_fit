part of 'open_food_bloc.dart';

@freezed
class OpenFoodState with _$OpenFoodState {
  const factory OpenFoodState.initial() = _Initial;
  const factory OpenFoodState.loading() = _Loading;
  const factory OpenFoodState.failure() = _Failure;
  const factory OpenFoodState.loadSuccess() = _LoadSuccess;
  const factory OpenFoodState.onBoardingError(Object? object) =
      _onBoardingError;
}
