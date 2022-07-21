// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'mentrual_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_MenstrualDto _$$_MenstrualDtoFromJson(Map<String, dynamic> json) =>
    _$_MenstrualDto(
      periodCycleDays: json['periodCycleDays'] as int? ?? 28,
      bleedingDays: json['bleedingDays'] as int? ?? 3,
      fertilephaseStart: json['fertilephaseStart'] == null
          ? null
          : DateTime.parse(json['fertilephaseStart'] as String),
      fertilephaseEnd: json['fertilephaseEnd'] == null
          ? null
          : DateTime.parse(json['fertilephaseEnd'] as String),
      ovulation: json['ovulation'] == null
          ? null
          : DateTime.parse(json['ovulation'] as String),
      periodStartDate: DateTime.parse(json['periodStartDate'] as String),
    );

Map<String, dynamic> _$$_MenstrualDtoToJson(_$_MenstrualDto instance) =>
    <String, dynamic>{
      'periodCycleDays': instance.periodCycleDays,
      'bleedingDays': instance.bleedingDays,
      'fertilephaseStart': instance.fertilephaseStart?.toIso8601String(),
      'fertilephaseEnd': instance.fertilephaseEnd?.toIso8601String(),
      'ovulation': instance.ovulation?.toIso8601String(),
      'periodStartDate': instance.periodStartDate.toIso8601String(),
    };
