import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

part 'menstrual_event.dart';
part 'menstrual_state.dart';
part 'menstrual_bloc.freezed.dart';

@lazySingleton
class MenstrualBloc extends Bloc<MenstrualEvent, MenstrualState> {
  MenstrualBloc() : super(MenstrualState.initial()) {
    on<MenstrualEvent>(_eventsHandler);
  }

  FutureOr<void> _eventsHandler(
    MenstrualEvent event,
    Emitter<MenstrualState> emit,
  ) async {
    event.map(
      started: (_) {},
      save: (s) {},
    );
  }
}
