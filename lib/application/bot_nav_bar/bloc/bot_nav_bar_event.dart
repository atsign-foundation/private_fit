part of 'bot_nav_bar_bloc.dart';

@freezed
class BotNavBarEvent with _$BotNavBarEvent {
  const factory BotNavBarEvent.change(int newIndex) = _BnbChange; 
}
