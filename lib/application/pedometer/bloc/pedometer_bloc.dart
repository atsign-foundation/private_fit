import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/use_cases/get_fetched_step_use_case.dart';
import 'package:private_fit/domain/pedometer/use_cases/pedestrian_status_use_case.dart';
import 'package:private_fit/domain/pedometer/use_cases/steps_count_stream_use_case.dart';

part 'pedometer_bloc.freezed.dart';
part 'pedometer_event.dart';
part 'pedometer_state.dart';

@lazySingleton
class PedometerBloc extends Bloc<PedometerEvent, PedometerState> {
  PedometerBloc(
    this._initPedometerUseCase,
    this._pedestrianStatusUseCase,
    this._stepsCountStreamUseCase,
  ) : super(PedometerState.initial()) {
    on<PedometerEvent>(_openStepHandler, transformer: sequential());
  }
  final InitPedometerUseCase _initPedometerUseCase;
  final PedestrianStatusUseCase _pedestrianStatusUseCase;
  final StepsCountStreamUseCase _stepsCountStreamUseCase;
  FutureOr<void> _openStepHandler(
    PedometerEvent event,
    Emitter<PedometerState> emit,
  ) async {
    await event.map(
      stepDataOnSuccess: (_) async {
        emit(
          state.copyWith(
            stepCountStream: _stepsCountStreamUseCase.call,
            pedistrianStatusStream: _pedestrianStatusUseCase.call,
          ),
        );
      },
      initPedometer: (_) async {
        await _initPedometerUseCase.call().whenComplete(
              () => emit(
                state.copyWith(
                  stepCountStream: _stepsCountStreamUseCase.call,
                  liveData: true,
                ),
              ),
            );
      },
    );
  }
}
