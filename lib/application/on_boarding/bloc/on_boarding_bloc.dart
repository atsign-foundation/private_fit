import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/contacts/use_cases/at_contacts_use_cases.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/on_boarding/use_cases/on_boarding_use_cases.dart';
import 'package:private_fit/domain/on_boarding/use_cases/set_username_use_case.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

///The Business Logic of OnBoarding an @sign
///It takes [OnBoardingEvent] as event and [OnBoardingState]
///and fetch its data from the individual use cases and emit the
///corespoding states [OnBoardingState].
@injectable
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc(
    this._loadAtClientPreferenceUseCase,
    this._getOnBoardedAtSignUseCase,
    this._onBoardDataWhenSuccessfulUseCase,
    this._atContactInitializationUseCase,
    this._setUserNameUseCase,
  ) : super(const OnBoardingState.initial()) {
    on<OnBoardingEvent>(_onBoardingEventHandler);
  }

  final LoadAtClientPreferenceUseCase _loadAtClientPreferenceUseCase;
  final GetOnBoardedAtSignUseCase _getOnBoardedAtSignUseCase;
  final OnBoardDataWhenSuccessfulUseCase _onBoardDataWhenSuccessfulUseCase;
  final AtContactInitializationUseCase _atContactInitializationUseCase;
  final SetUserNameUseCase _setUserNameUseCase;

  FutureOr<void> _onBoardingEventHandler(
    OnBoardingEvent event,
    Emitter<OnBoardingState> emit,
  ) async {
    await event.when(
      onBoardingAtSign: () async {
        final results = await _loadAtClientPreferenceUseCase();
        emit(
          results.fold(
            OnBoardingState.failure,
            OnBoardingState.loading,
          ),
        );
      },
      atSignOnBoardingSucces: (value, atsign) async {
        final atSign = _getOnBoardedAtSignUseCase.call();
        _onBoardDataWhenSuccessfulUseCase(value, atsign);
        await _atContactInitializationUseCase();
        emit(
          OnBoardingState.loadSuccess(atSign),
        );
      },
      onBoardingError: (error) {
        emit(
          OnBoardingState.onBoardingError(error),
        );
      },
      setUserName: (username) async {
        await _setUserNameUseCase
            .call(username)
            .then((value) => emit(OnBoardingState.settingUsername(value)));
      },
    );
  }
}
