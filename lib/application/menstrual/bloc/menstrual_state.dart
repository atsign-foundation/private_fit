part of 'menstrual_bloc.dart';

@freezed
// class MenstrualState with _$MenstrualState {
//   const factory MenstrualState.initial() = _Initial;
// }

class MenstrualState with _$MenstrualState {
  const factory MenstrualState({
    required MenstrualDataModel menstrualDataModel,
    required bool showErrorMessages,
    required bool isSaving,
    required Option<Either<ValueFailure, Unit>> saveFailureOrSuccessOption,
  }) = _MenstrualState;
  factory MenstrualState.initial() => MenstrualState(
        menstrualDataModel: MenstrualDataModel.initialState(),
        saveFailureOrSuccessOption: none(),
        isSaving: false,
        showErrorMessages: false,
      );
}
