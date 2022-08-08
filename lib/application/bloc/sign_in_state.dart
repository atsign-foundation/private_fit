part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool isAdmin,
    required bool onboarded,
    required bool showErrorMessages,
    required Option<AtPlatformFailure> saveFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() => SignInState(
        isAdmin: false,
        onboarded: false,
        showErrorMessages: false,
        saveFailureOrSuccessOption: none(),
      );
}
