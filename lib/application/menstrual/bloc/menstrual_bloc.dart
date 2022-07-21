import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';
import 'package:private_fit/domain/menstrual/use_cases/get_mentrual_data_use_case.dart';
import 'package:private_fit/domain/menstrual/use_cases/save_menstrual_data_use_case.dart';
import 'package:table_calendar/table_calendar.dart';

part 'menstrual_event.dart';
part 'menstrual_state.dart';
part 'menstrual_bloc.freezed.dart';

@lazySingleton
class MenstrualBloc extends Bloc<MenstrualEvent, MenstrualState> {
  MenstrualBloc(this._saveMenstrualDataUseCase, this._getMenstrualDataUseCase)
      : super(MenstrualState.initial()) {
    on<MenstrualEvent>(_eventsHandler);
  }

  final SaveMenstrualDataUseCase _saveMenstrualDataUseCase;
  final GetMenstrualDataUseCase _getMenstrualDataUseCase;

  FutureOr<void> _eventsHandler(
    MenstrualEvent event,
    Emitter<MenstrualState> emit,
  ) async {
    await event.map(
      started: (d) async {
        await _getMenstrualDataUseCase.call().then((value) {
          value.fold(
            () => emit(
              state.copyWith(showErrorMessages: true),
            ),
            (menstrualDataModel) => emit(
              state.copyWith(
                menstrualDataModel: menstrualDataModel,
                liveData: true,
              ),
            ),
          );
        });
      },
      save: (s) async {
        await _saveMenstrualDataUseCase.call(s.menstrualDataModel).then(
              (value) => value.fold(
                (l) => emit(
                  state.copyWith(
                    showErrorMessages: true,
                    saveFailureOrSuccessOption: optionOf(value),
                  ),
                ),
                (r) => const MenstrualEvent.started(),
              ),
            );
      },
      calendarFormatChange: (format) {
        emit(
          state.copyWith(
            calendarFormat: format.format,
          ),
        );
      },
    );
  }
}
