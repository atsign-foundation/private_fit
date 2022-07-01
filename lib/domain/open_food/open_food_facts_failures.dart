import 'package:freezed_annotation/freezed_annotation.dart';

part 'open_food_facts_failures.freezed.dart';

@freezed
class OpenFoodFailures with _$OpenFoodFailures {
  const factory OpenFoodFailures.cancelledByUser() = CancelledByUser;
  const factory OpenFoodFailures.failedToGetCameraPermissions() =
      FailedToGetCameraPermissions;
  const factory OpenFoodFailures.serverError() = ServerError;
  const factory OpenFoodFailures.failToSetOnBoardData() = FailToSetOnBoardData;
}
