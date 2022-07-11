import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'admin_model.freezed.dart';
part 'admin_model.g.dart';

@freezed
class Admin with _$Admin {
  const factory Admin({
    required String id,
    required String atSign,
    required String name,
    required String? img,
    required bool isSuperAdmin,
  }) = _Admin;

  factory Admin.fromJson(Map<String, dynamic> json) => _$AdminFromJson(json);
}
