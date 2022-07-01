part of 'open_food_bloc.dart';

@freezed
class OpenFoodEvent with _$OpenFoodEvent {
  // const factory OpenFoodEvent.getCameraPermission() = _GetCameraPermission;
  const factory OpenFoodEvent.qrDataOnSuccess(String qRdata) = _QrDataOnSuccess;
  // const factory OpenFoodEvent.scanComplete() = _ScanComplete;
}
