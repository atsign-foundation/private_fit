part of 'pedometer_bloc.dart';

@freezed
abstract class PedometerEvent with _$PedometerEvent {
  const factory PedometerEvent.initPedometer() = _initPedometer;

  const factory PedometerEvent.stepDataOnSuccess() = _StepDataOnSuccess;
}
