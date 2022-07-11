// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'report_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Report _$$_ReportFromJson(Map<String, dynamic> json) => _$_Report(
      id: json['id'] as String,
      title: json['title'] as String,
      content: json['content'] as String,
      from: json['from'] as String,
      createdAt: DateTime.parse(json['createdAt'] as String),
      image: json['image'] as String,
      experience: json['experience'] as String?,
      logFileData: json['logFileData'] as String?,
      deviceInfo: json['deviceInfo'] as Map<String, dynamic>?,
    );

Map<String, dynamic> _$$_ReportToJson(_$_Report instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'from': instance.from,
      'createdAt': instance.createdAt.toIso8601String(),
      'image': instance.image,
      'experience': instance.experience,
      'logFileData': instance.logFileData,
      'deviceInfo': instance.deviceInfo,
    };
