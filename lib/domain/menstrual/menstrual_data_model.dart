import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/menstrual/value_objects.dart';

part 'menstrual_data_model.freezed.dart';

@freezed
abstract class MenstrualDataModel with _$MenstrualDataModel {
  // factory MenstrualDataModel.fromJson(Map<String, dynamic> json) =>
  //     _$MenstrualDataModelFromJson(json);
  factory MenstrualDataModel({
    @Default(28) int periodCycleDays,
    @Default(3) int bleedingDays,
    int? fertilephaseStart,
    int? fertilephaseEnd,
    int? ovulation,
    required PeriodStartDate periodStartDate,
  }) = _MenstrualDataModel;

  const MenstrualDataModel._();

  factory MenstrualDataModel.initialState() => MenstrualDataModel(
        periodCycleDays: 28,
        bleedingDays: 3,
        periodStartDate: PeriodStartDate(DateTime.now()),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return periodStartDate.failureOrUnit.fold(some, (_) => none());
  }
}
