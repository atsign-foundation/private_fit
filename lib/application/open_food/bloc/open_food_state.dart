part of 'open_food_bloc.dart';

@freezed
class OpenFoodState with _$OpenFoodState {
  const factory OpenFoodState.initial() = _Initial;
  // const factory OpenFoodState.loading() = _Loading;
  const factory OpenFoodState.failureGettingFood(
    OpenFoodFailures openFoodfailures,
  ) = _FailureGettingFood;
  const factory OpenFoodState.loadSuccess(FetchedProduct fetchedProduct) =
      _LoadSuccess;
  // const factory OpenFoodState.onBoardingError(Object? object) =
  //     _onBoardingError;
}
