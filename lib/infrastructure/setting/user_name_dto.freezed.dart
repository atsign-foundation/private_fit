// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_name_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserNameDto _$UserNameDtoFromJson(Map<String, dynamic> json) {
  return _UserNameDto.fromJson(json);
}

/// @nodoc
mixin _$UserNameDto {
  String get username => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserNameDtoCopyWith<UserNameDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameDtoCopyWith<$Res> {
  factory $UserNameDtoCopyWith(
          UserNameDto value, $Res Function(UserNameDto) then) =
      _$UserNameDtoCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class _$UserNameDtoCopyWithImpl<$Res> implements $UserNameDtoCopyWith<$Res> {
  _$UserNameDtoCopyWithImpl(this._value, this._then);

  final UserNameDto _value;
  // ignore: unused_field
  final $Res Function(UserNameDto) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_UserNameDtoCopyWith<$Res>
    implements $UserNameDtoCopyWith<$Res> {
  factory _$$_UserNameDtoCopyWith(
          _$_UserNameDto value, $Res Function(_$_UserNameDto) then) =
      __$$_UserNameDtoCopyWithImpl<$Res>;
  @override
  $Res call({String username});
}

/// @nodoc
class __$$_UserNameDtoCopyWithImpl<$Res> extends _$UserNameDtoCopyWithImpl<$Res>
    implements _$$_UserNameDtoCopyWith<$Res> {
  __$$_UserNameDtoCopyWithImpl(
      _$_UserNameDto _value, $Res Function(_$_UserNameDto) _then)
      : super(_value, (v) => _then(v as _$_UserNameDto));

  @override
  _$_UserNameDto get _value => super._value as _$_UserNameDto;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UserNameDto(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserNameDto extends _UserNameDto {
  _$_UserNameDto({required this.username}) : super._();

  factory _$_UserNameDto.fromJson(Map<String, dynamic> json) =>
      _$$_UserNameDtoFromJson(json);

  @override
  final String username;

  @override
  String toString() {
    return 'UserNameDto(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameDto &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UserNameDtoCopyWith<_$_UserNameDto> get copyWith =>
      __$$_UserNameDtoCopyWithImpl<_$_UserNameDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserNameDtoToJson(
      this,
    );
  }
}

abstract class _UserNameDto extends UserNameDto {
  factory _UserNameDto({required final String username}) = _$_UserNameDto;
  _UserNameDto._() : super._();

  factory _UserNameDto.fromJson(Map<String, dynamic> json) =
      _$_UserNameDto.fromJson;

  @override
  String get username;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameDtoCopyWith<_$_UserNameDto> get copyWith =>
      throw _privateConstructorUsedError;
}
