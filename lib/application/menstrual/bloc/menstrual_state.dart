part of 'menstrual_bloc.dart';

@freezed
class MenstrualState with _$MenstrualState {
  const factory MenstrualState({
    required MenstrualDataModel menstrualDataModel,
    required bool showErrorMessages,
    required bool isSaving,
    required bool liveData,
    required Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption,
    required CalendarFormat calendarFormat,
  }) = _MenstrualState;
  factory MenstrualState.initial() => MenstrualState(
        menstrualDataModel: MenstrualDataModel.initialState(),
        saveFailureOrSuccessOption: none(),
        isSaving: false,
        showErrorMessages: false,
        liveData: false,
        calendarFormat: CalendarFormat.month,
      );
}
