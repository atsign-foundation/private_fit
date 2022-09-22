import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_food_facts_failures.freezed.dart';

@freezed
class OpenFoodFailures with _$OpenFoodFailures {
  const factory OpenFoodFailures.internetNotFound() = _InternetNotFound;
  const factory OpenFoodFailures.failedToGetCameraPermissions() =
      _FailedToGetCameraPermissions;
  const factory OpenFoodFailures.internetError() = _InternetError;
  const factory OpenFoodFailures.userCancelled() = _UserCancelled;
  const factory OpenFoodFailures.codeInvalid() = _codeInvalid;
  const factory OpenFoodFailures.failToSaveData() = _failToSaveData;
}
