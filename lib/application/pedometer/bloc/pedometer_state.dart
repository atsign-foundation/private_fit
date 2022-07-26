part of 'pedometer_bloc.dart';

@freezed
class PedometerState with _$PedometerState {
  const factory PedometerState({
    required bool showErrorMessages,
    required bool liveData,
    Stream<StepCount>? stepCountStream,
    Stream<PedestrianStatus>? pedistrianStatusStream,
  }) = _PedometerState;
  factory PedometerState.initial() => const PedometerState(
        showErrorMessages: false,
        liveData: false,
      );
}
