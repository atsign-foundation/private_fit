// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'user_name_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$UserNameModel {
  UserName get username => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $UserNameModelCopyWith<UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserNameModelCopyWith<$Res> {
  factory $UserNameModelCopyWith(
          UserNameModel value, $Res Function(UserNameModel) then) =
      _$UserNameModelCopyWithImpl<$Res>;
  $Res call({UserName username});
}

/// @nodoc
class _$UserNameModelCopyWithImpl<$Res>
    implements $UserNameModelCopyWith<$Res> {
  _$UserNameModelCopyWithImpl(this._value, this._then);

  final UserNameModel _value;
  // ignore: unused_field
  final $Res Function(UserNameModel) _then;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_value.copyWith(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UserName,
    ));
  }
}

/// @nodoc
abstract class _$$_UserNameModelCopyWith<$Res>
    implements $UserNameModelCopyWith<$Res> {
  factory _$$_UserNameModelCopyWith(
          _$_UserNameModel value, $Res Function(_$_UserNameModel) then) =
      __$$_UserNameModelCopyWithImpl<$Res>;
  @override
  $Res call({UserName username});
}

/// @nodoc
class __$$_UserNameModelCopyWithImpl<$Res>
    extends _$UserNameModelCopyWithImpl<$Res>
    implements _$$_UserNameModelCopyWith<$Res> {
  __$$_UserNameModelCopyWithImpl(
      _$_UserNameModel _value, $Res Function(_$_UserNameModel) _then)
      : super(_value, (v) => _then(v as _$_UserNameModel));

  @override
  _$_UserNameModel get _value => super._value as _$_UserNameModel;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_UserNameModel(
      username: username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as UserName,
    ));
  }
}

/// @nodoc

class _$_UserNameModel extends _UserNameModel {
  _$_UserNameModel({required this.username}) : super._();

  @override
  final UserName username;

  @override
  String toString() {
    return 'UserNameModel(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserNameModel &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      __$$_UserNameModelCopyWithImpl<_$_UserNameModel>(this, _$identity);
}

abstract class _UserNameModel extends UserNameModel {
  factory _UserNameModel({required final UserName username}) = _$_UserNameModel;
  _UserNameModel._() : super._();

  @override
  UserName get username => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_UserNameModelCopyWith<_$_UserNameModel> get copyWith =>
      throw _privateConstructorUsedError;
}
