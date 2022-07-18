part of 'menstrual_bloc.dart';

@freezed
class MenstrualEvent with _$MenstrualEvent {
  const factory MenstrualEvent.started() = _Started;
  const factory MenstrualEvent.save(MenstrualDataModel menstrualDataModel) =
      _save;
}
