part of 'settings_bloc.dart';

@freezed
class SettingsState with _$SettingsState {
  const factory SettingsState({
    required UserNameModel userNameModel,
    required bool showErrorMessages,
    required bool isEditing,
    required bool isSaving,
    required Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption,
    required Option<AtPlatformFailure> getFailureOrSuccessOption,
  }) = _SettingsState;
  factory SettingsState.initial() => SettingsState(
        userNameModel: UserNameModel.empty(),
        saveFailureOrSuccessOption: none(),
        isEditing: false,
        isSaving: false,
        showErrorMessages: false,
        getFailureOrSuccessOption: none(),
      );
}
