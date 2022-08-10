part of 'sign_in_bloc.dart';

@freezed
class SignInEvent with _$SignInEvent {
  const factory SignInEvent.started() = _Started;

  const factory SignInEvent.onBoardAtSign() = _onBoardAtSign;

  const factory SignInEvent.initAtPreferences(String atSign) =
      _initAtPreferences;

  const factory SignInEvent.setAtClientPreferences(
    AtClientPreference atClientPreference,
  ) = _setAtClientPreferences;
}
