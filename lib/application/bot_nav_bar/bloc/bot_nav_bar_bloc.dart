import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bot_nav_bar_event.dart';
part 'bot_nav_bar_bloc.freezed.dart';

@injectable
class BotNavBarBloc extends Bloc<BotNavBarEvent, int> {
  BotNavBarBloc() : super(0) {
    // on<BotNavBarEvent>(_navigationHandler);
    on<BotNavBarEvent>((event, emit) {
      emit(event.newIndex);
    },);
  }

  // FutureOr<void> _navigationHandler(
  //   BotNavBarEvent event,
  //   Emitter<int> emit,
  // ) async {
  //   event.map(change: (index) {
  //     emit(index.newIndex);
  //   },);
  // }
}