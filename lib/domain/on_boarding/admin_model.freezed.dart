// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'admin_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Admin _$AdminFromJson(Map<String, dynamic> json) {
  return _Admin.fromJson(json);
}

/// @nodoc
mixin _$Admin {
  String get id => throw _privateConstructorUsedError;
  String get atSign => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  String? get img => throw _privateConstructorUsedError;
  bool get isSuperAdmin => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $AdminCopyWith<Admin> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AdminCopyWith<$Res> {
  factory $AdminCopyWith(Admin value, $Res Function(Admin) then) =
      _$AdminCopyWithImpl<$Res>;
  $Res call(
      {String id, String atSign, String name, String? img, bool isSuperAdmin});
}

/// @nodoc
class _$AdminCopyWithImpl<$Res> implements $AdminCopyWith<$Res> {
  _$AdminCopyWithImpl(this._value, this._then);

  final Admin _value;
  // ignore: unused_field
  final $Res Function(Admin) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? atSign = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? isSuperAdmin = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      atSign: atSign == freezed
          ? _value.atSign
          : atSign // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuperAdmin: isSuperAdmin == freezed
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
abstract class _$$_AdminCopyWith<$Res> implements $AdminCopyWith<$Res> {
  factory _$$_AdminCopyWith(_$_Admin value, $Res Function(_$_Admin) then) =
      __$$_AdminCopyWithImpl<$Res>;
  @override
  $Res call(
      {String id, String atSign, String name, String? img, bool isSuperAdmin});
}

/// @nodoc
class __$$_AdminCopyWithImpl<$Res> extends _$AdminCopyWithImpl<$Res>
    implements _$$_AdminCopyWith<$Res> {
  __$$_AdminCopyWithImpl(_$_Admin _value, $Res Function(_$_Admin) _then)
      : super(_value, (v) => _then(v as _$_Admin));

  @override
  _$_Admin get _value => super._value as _$_Admin;

  @override
  $Res call({
    Object? id = freezed,
    Object? atSign = freezed,
    Object? name = freezed,
    Object? img = freezed,
    Object? isSuperAdmin = freezed,
  }) {
    return _then(_$_Admin(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as String,
      atSign: atSign == freezed
          ? _value.atSign
          : atSign // ignore: cast_nullable_to_non_nullable
              as String,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      img: img == freezed
          ? _value.img
          : img // ignore: cast_nullable_to_non_nullable
              as String?,
      isSuperAdmin: isSuperAdmin == freezed
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Admin implements _Admin {
  const _$_Admin(
      {required this.id,
      required this.atSign,
      required this.name,
      required this.img,
      required this.isSuperAdmin});

  factory _$_Admin.fromJson(Map<String, dynamic> json) =>
      _$$_AdminFromJson(json);

  @override
  final String id;
  @override
  final String atSign;
  @override
  final String name;
  @override
  final String? img;
  @override
  final bool isSuperAdmin;

  @override
  String toString() {
    return 'Admin(id: $id, atSign: $atSign, name: $name, img: $img, isSuperAdmin: $isSuperAdmin)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Admin &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.atSign, atSign) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.img, img) &&
            const DeepCollectionEquality()
                .equals(other.isSuperAdmin, isSuperAdmin));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(atSign),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(img),
      const DeepCollectionEquality().hash(isSuperAdmin));

  @JsonKey(ignore: true)
  @override
  _$$_AdminCopyWith<_$_Admin> get copyWith =>
      __$$_AdminCopyWithImpl<_$_Admin>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_AdminToJson(
      this,
    );
  }
}

abstract class _Admin implements Admin {
  const factory _Admin(
      {required final String id,
      required final String atSign,
      required final String name,
      required final String? img,
      required final bool isSuperAdmin}) = _$_Admin;

  factory _Admin.fromJson(Map<String, dynamic> json) = _$_Admin.fromJson;

  @override
  String get id;
  @override
  String get atSign;
  @override
  String get name;
  @override
  String? get img;
  @override
  bool get isSuperAdmin;
  @override
  @JsonKey(ignore: true)
  _$$_AdminCopyWith<_$_Admin> get copyWith =>
      throw _privateConstructorUsedError;
}
