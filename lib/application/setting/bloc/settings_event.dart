part of 'settings_bloc.dart';

@freezed
class SettingsEvent with _$SettingsEvent {
  const factory SettingsEvent.started() = _Started;
  const factory SettingsEvent.initialized(
    Option<UserNameModel> initialUserNameOption,
  ) = _initialized;

  const factory SettingsEvent.userNameChanged(String username) =
      _userNameChanged;
  const factory SettingsEvent.saved() = _saved;
}
