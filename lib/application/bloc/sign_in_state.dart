part of 'sign_in_bloc.dart';

@freezed
class SignInState with _$SignInState {
  const factory SignInState({
    required bool authenticated,
    required AtClientPreference atClientPreference,
    bool? isSuperAdmin,
    String? currentAtSign,
    required bool isAdmin,
    required Option<bool> onboarded,
    required bool showErrorMessages,
    required Option<AtPlatformFailure> saveFailureOrSuccessOption,
  }) = _SignInState;

  factory SignInState.initial() {
    return SignInState(
      atClientPreference: AtClientPreference(),
      authenticated: false,
      isSuperAdmin: false,
      isAdmin: false,
      onboarded: none(),
      showErrorMessages: false,
      saveFailureOrSuccessOption: none(),
    );
  }

  // const factory SignInState.authenticated() = _authenticated;
}
