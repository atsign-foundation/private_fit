import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';

part 'bot_nav_bar_event.dart';
part 'bot_nav_bar_bloc.freezed.dart';

@injectable
class BotNavBarBloc extends Bloc<BotNavBarEvent, int> {
  BotNavBarBloc() : super(0) {
    on<BotNavBarEvent>((event, emit) {
      emit(event.newIndex);
    },);
  }
}
