import 'package:freezed_annotation/freezed_annotation.dart';

part 'activity_tracker_failures.freezed.dart';

@freezed
class ActivityTrackerFailures with _$ActivityTrackerFailures {
  const factory ActivityTrackerFailures.internetNotFound() = _InternetNotFound;
  const factory ActivityTrackerFailures.failedToGetPermissions() =
      _FailedToGetCameraPermissions;
  const factory ActivityTrackerFailures.internetError() = _InternetError;
  const factory ActivityTrackerFailures.userCancelled() = _UserCancelled;
  const factory ActivityTrackerFailures.codeInvalid() = _codeInvalid;
  const factory ActivityTrackerFailures.onPedestrianStatusError() =
      _onPedestrianStatusError;
  const factory ActivityTrackerFailures.onStepCountError() = _onStepCountError;
}
