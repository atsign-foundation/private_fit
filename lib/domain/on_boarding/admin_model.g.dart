// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'admin_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Admin _$$_AdminFromJson(Map<String, dynamic> json) => _$_Admin(
      id: json['id'] as String,
      atSign: json['atSign'] as String,
      name: json['name'] as String,
      img: json['img'] as String?,
      isSuperAdmin: json['isSuperAdmin'] as bool,
    );

Map<String, dynamic> _$$_AdminToJson(_$_Admin instance) => <String, dynamic>{
      'id': instance.id,
      'atSign': instance.atSign,
      'name': instance.name,
      'img': instance.img,
      'isSuperAdmin': instance.isSuperAdmin,
    };
