import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'open_food_event.dart';
part 'open_food_state.dart';
part 'open_food_bloc.freezed.dart';

@injectable
class OpenFoodBloc extends Bloc<OpenFoodEvent, OpenFoodState> {
  OpenFoodBloc() : super(const OpenFoodState.initial()) {
    on<OpenFoodEvent>(_openFoodHandler);
  }

  FutureOr<void> _openFoodHandler(
    OpenFoodEvent event,
    Emitter<OpenFoodState> emit,
  ) {
    // event.map(getFoodResult: getFoodResult)
  }
}
