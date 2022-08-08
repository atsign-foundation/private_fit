import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/use_cases/get_atsign_with_status_use_case.dart';
import 'package:private_fit/domain/sign_in/use_cases/set_atclient_prefs_use_case.dart';
import 'package:private_fit/shared/constants.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(this._getAtSignWithStatus, this._setAtClienPreferencesUseCase)
      : super(SignInState.initial()) {
    on<SignInEvent>(_signInHandler);
  }

  final GetAtSignWithStatus _getAtSignWithStatus;
  final SetAtClienPreferencesUseCase _setAtClienPreferencesUseCase;

  FutureOr<void> _signInHandler(
    SignInEvent event,
    Emitter<SignInState> emit,
  ) async {
    await event.map(
      started: (_) async {
        await _getAtSignWithStatus.call().then(
          (value) {
            value.fold(
              (l) => emit(
                state.copyWith(
                  saveFailureOrSuccessOption: optionOf(l),
                  showErrorMessages: true,
                ),
              ),
              (r) {},
            );
          },
        );
      },
      onBoardAtSign: (preferences) {},
    );
  }
}
