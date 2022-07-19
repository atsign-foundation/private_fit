import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';
import 'package:private_fit/domain/menstrual/value_objects.dart';

part 'mentrual_dto.freezed.dart';
part 'mentrual_dto.g.dart';

@freezed
class MenstrualDto with _$MenstrualDto {
  factory MenstrualDto({
    @Default(28) int periodCycleDays,
    @Default(3) int bleedingDays,
    int? fertilephaseStart,
    int? fertilephaseEnd,
    int? ovulation,
    required DateTime periodStartDate,
  }) = _MenstrualDto;

  factory MenstrualDto.fromJson(Map<String, dynamic> json) =>
      _$MenstrualDtoFromJson(json);

  const MenstrualDto._();

  factory MenstrualDto.fromDomain(MenstrualDataModel menstrualDataModel) {
    return MenstrualDto(
      periodStartDate: menstrualDataModel.periodStartDate.getOrCrash(),
      periodCycleDays: menstrualDataModel.periodCycleDays,
      bleedingDays: menstrualDataModel.bleedingDays,
      fertilephaseStart: menstrualDataModel.fertilephaseStart,
      fertilephaseEnd: menstrualDataModel.fertilephaseEnd,
      ovulation: menstrualDataModel.ovulation,
    );
  }

  MenstrualDataModel toDomain() {
    return MenstrualDataModel(
      periodStartDate: PeriodStartDate(periodStartDate),
      bleedingDays: bleedingDays,
      fertilephaseEnd: fertilephaseEnd,
      fertilephaseStart: fertilephaseStart,
      ovulation: ovulation,
      periodCycleDays: periodCycleDays,
    );
  }
}
