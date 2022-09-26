import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/at_onboarding_result.dart';
import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/contacts/use_cases/at_contact_initialization_use_case.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/on_boarding/use_cases/on_boarding_use_cases.dart';

part 'on_boarding_event.dart';
part 'on_boarding_state.dart';
part 'on_boarding_bloc.freezed.dart';

///The Business Logic of OnBoarding an @sign
///It takes [OnBoardingEvent] as event and [OnBoardingState]
///and fetch its data from the individual use cases and emit the
///corespoding states [OnBoardingState].
@lazySingleton
class OnBoardingBloc extends Bloc<OnBoardingEvent, OnBoardingState> {
  OnBoardingBloc(
    this._loadAtClientPreferenceUseCase,
    this._onBoardDataWhenSuccessfulUseCase,
    this._atContactInitializationUseCase,
  ) : super(const OnBoardingState.initial()) {
    on<OnBoardingEvent>(_onBoardingEventHandler);
  }

  final LoadAtClientPreferenceUseCase _loadAtClientPreferenceUseCase;
  final OnBoardDataWhenSuccessfulUseCase _onBoardDataWhenSuccessfulUseCase;
  final AtContactInitializationUseCase _atContactInitializationUseCase;

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
      atSignOnBoardingSucces: (AtOnboardingResult atOnboardingResult) async {
        switch (atOnboardingResult.status) {
          case AtOnboardingResultStatus.success:
            _onBoardDataWhenSuccessfulUseCase(atOnboardingResult);
            await _atContactInitializationUseCase();
            emit(
              const OnBoardingState.loadSuccess(),
            );

            break;
          case AtOnboardingResultStatus.error:
            const OnBoardingState.onBoardingError();

            break;
          case AtOnboardingResultStatus.cancel:
            break;
        }
      },
      onBoardingError: (error) {
        emit(
          OnBoardingState.onBoardingError(error: error),
        );
      },
    );
  }
}
