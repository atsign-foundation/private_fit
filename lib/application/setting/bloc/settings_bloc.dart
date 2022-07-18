import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/settings/use_cases/get_name_use_case.dart';
import 'package:private_fit/domain/settings/use_cases/user_name_use_case.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';
import 'package:private_fit/domain/settings/value_objects.dart';

part 'settings_event.dart';
part 'settings_state.dart';
part 'settings_bloc.freezed.dart';

@lazySingleton
class SettingsBloc extends Bloc<SettingsEvent, SettingsState> {
  SettingsBloc(this._setUserNameUseCase, this._gettgUserNameUseCase)
      : super(SettingsState.initial()) {
    on<SettingsEvent>(_settingEventHander);
  }

  final SettingUserNameUseCase _setUserNameUseCase;
  final GettgUserNameUseCase _gettgUserNameUseCase;

  FutureOr<void> _settingEventHander(
    SettingsEvent event,
    Emitter<SettingsState> emit,
  ) async {
    await event.map(
      initialized: (e) {
        emit(
          e.initialUserNameOption.fold(
            () => state,
            (a) => state.copyWith(userNameModel: a, isEditing: true),
          ),
        );
      },
      userNameChanged: (username) {
        emit(
          state.copyWith(
            userNameModel: state.userNameModel
                .copyWith(username: UserName(username.username)),
            saveFailureOrSuccessOption: none(),
            isEditing: true,
          ),
        );
      },
      saved: (e) async {
        emit(
          state.copyWith(
            isSaving: true,
            isEditing: false,
            saveFailureOrSuccessOption: none(),
          ),
        );

        if (state.userNameModel.failureOption.isNone()) {
          await _setUserNameUseCase.call(state.userNameModel).then((value) {
            emit(
              state.copyWith(
                isSaving: false,
                // showErrorMessages: true,
                saveFailureOrSuccessOption: optionOf(value),
              ),
            );
          });
        }
      },
      started: (_) async {
        await _gettgUserNameUseCase.call().then(
              (value) => emit(
                state.copyWith(
                  userNameModel: state.userNameModel
                      .copyWith(username: UserName(value ?? 'user name')),
                ),
              ),
            );

        // emit(
        //   SettingsState.initial(),
        // );
      },
    );
  }
}
