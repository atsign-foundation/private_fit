part of 'open_food_dess_bloc.dart';

@freezed
class OpenFoodDessState with _$OpenFoodDessState {
  const factory OpenFoodDessState({
    required bool isLoaded,
    Product? product,
    AtPlatformFailure? atPlatformFailure,
    required bool showErrors,
    String? nutrition_01,
    String? nutrition_02,
    String? nutrition_03,
  }) = _OpenFoodDessState;

  factory OpenFoodDessState.initial() => const OpenFoodDessState(
        isLoaded: false,
        showErrors: false,
      );
}
