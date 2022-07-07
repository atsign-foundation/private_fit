// 📦 Package imports:
import 'package:freezed_annotation/freezed_annotation.dart';

part 'report_model.freezed.dart';
part 'report_model.g.dart';

@freezed
class Report with _$Report {
  const factory Report({
    required String id,
    required String title,
    required String content,
    required String from,
    required DateTime createdAt,
    required String image,
    String? experience,
    required String? logFileData,
    required Map<String, dynamic>? deviceInfo,
  }) = _Report;

  factory Report.fromJson(Map<String, dynamic> json) => _$ReportFromJson(json);
}
