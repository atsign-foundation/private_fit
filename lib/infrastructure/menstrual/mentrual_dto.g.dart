// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentrual_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenstrualDto _$$_MenstrualDtoFromJson(Map<String, dynamic> json) =>
    _$_MenstrualDto(
      periodCycleDays: json['periodCycleDays'] as int? ?? 28,
      bleedingDays: json['bleedingDays'] as int? ?? 3,
      fertilephaseStart: json['fertilephaseStart'] as int?,
      fertilephaseEnd: json['fertilephaseEnd'] as int?,
      ovulation: json['ovulation'] as int?,
      periodStartDate: DateTime.parse(json['periodStartDate'] as String),
    );

Map<String, dynamic> _$$_MenstrualDtoToJson(_$_MenstrualDto instance) =>
    <String, dynamic>{
      'periodCycleDays': instance.periodCycleDays,
      'bleedingDays': instance.bleedingDays,
      'fertilephaseStart': instance.fertilephaseStart,
      'fertilephaseEnd': instance.fertilephaseEnd,
      'ovulation': instance.ovulation,
      'periodStartDate': instance.periodStartDate.toIso8601String(),
    };
