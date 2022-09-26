part of 'open_food_bloc.dart';

@freezed
class OpenFoodEvent with _$OpenFoodEvent {
  const factory OpenFoodEvent.qrDataOnSuccess(String qRdata) = _QrDataOnSuccess;
  const factory OpenFoodEvent.saveProductData(Product product) =
      _saveProductData;
  // // const factory OpenFoodEvent.getFoodDataFromDess() = _getFoodDataFromDess;
  // // const factory OpenFoodEvent.getFoodFromDess() = _GetFoodFromDess;

  const factory OpenFoodEvent.getFoodFromDess() = _getFoodFromDess;
}
