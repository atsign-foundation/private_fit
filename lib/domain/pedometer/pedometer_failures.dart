import 'package:freezed_annotation/freezed_annotation.dart';

part 'pedometer_failures.freezed.dart';

@freezed
class PedometerFailures with _$PedometerFailures {
  const factory PedometerFailures.internetNotFound() = _InternetNotFound;
  const factory PedometerFailures.failedToGetPermissions() =
      _FailedToGetCameraPermissions;
  const factory PedometerFailures.internetError() = _InternetError;
  const factory PedometerFailures.userCancelled() = _UserCancelled;
  const factory PedometerFailures.codeInvalid() = _codeInvalid;
  const factory PedometerFailures.onPedestrianStatusError() =
      _onPedestrianStatusError;
  const factory PedometerFailures.onStepCountError() = _onStepCountError;
}
