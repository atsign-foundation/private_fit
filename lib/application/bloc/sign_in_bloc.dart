import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/sign_in/use_cases/get_atsign_with_status_use_case.dart';
import 'package:private_fit/domain/sign_in/use_cases/load_client_prefs_use_case.dart';
import 'package:private_fit/domain/sign_in/use_cases/on_board_use_case.dart';
import 'package:private_fit/domain/sign_in/use_cases/set_atclient_prefs_use_case.dart';
import 'package:private_fit/shared/constants.dart';

part 'sign_in_event.dart';
part 'sign_in_state.dart';
part 'sign_in_bloc.freezed.dart';

@lazySingleton
class SignInBloc extends Bloc<SignInEvent, SignInState> {
  SignInBloc(
    this._getAtSignWithStatus,
    this._setAtClienPreferencesUseCase,
    this._loadAtClientPreferenceUseCase,
    this._onBoardUseCase,
  ) : super(SignInState.initial()) {
    on<SignInEvent>(_signInHandler);
  }

  final GetAtSignWithStatusUseCase _getAtSignWithStatus;
  final SetAtClienPreferencesUseCase _setAtClienPreferencesUseCase;
  final LoadAtClientPreferenceUseCase _loadAtClientPreferenceUseCase;
  final OnBoardUseCase _onBoardUseCase;

  Future<void> _signInHandler(
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
              (atsign) async {
                emit(
                  state.copyWith(
                    currentAtSign: atsign,
                    isSuperAdmin:
                        atsign.replaceAll('@', '') == Constants.reportAtsign,
                  ),
                );

                add(
                  SignInEvent.initAtPreferences(atsign),
                );
              },
            );
          },
        );
      },
      initAtPreferences: (v) async {
        await _loadAtClientPreferenceUseCase.call(v.atSign).then(
          (value) {
            value.fold(
              (l) => emit(
                state.copyWith(
                  showErrorMessages: true,
                  saveFailureOrSuccessOption: some(l),
                ),
              ),
              (atClientprefs) {
                add(SignInEvent.setAtClientPreferences(atClientprefs));
              },
            );
          },
        );
      },
      setAtClientPreferences: (v) async {
        await _setAtClienPreferencesUseCase.call(v.atClientPreference).then(
              (value) => value.fold(
                (l) => emit(
                  state.copyWith(
                    showErrorMessages: true,
                    saveFailureOrSuccessOption: some(l),
                  ),
                ),
                (r) async => {
                  state.copyWith(
                    atClientPreference: v.atClientPreference,
                  ),
                  state.atClientPreference.privateKey =
                      await KeyChainManager.getInstance()
                          .getEncryptionPrivateKey(
                    state.currentAtSign!,
                  ),
                  add(const SignInEvent.onBoardAtSign())
                },
              ),
            );
      },
      onBoardAtSign: (preferences) async {
        await _onBoardUseCase.call().then(
              (value) => value.fold(
                (l) => emit(
                  state.copyWith(
                    showErrorMessages: true,
                    saveFailureOrSuccessOption: some(l),
                  ),
                ),
                (r) => emit(
                  state.copyWith(
                    authenticated: r,
                    onboarded: some(r),
                  ),
                ),
              ),
            );
      },
    );
  }
}