// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'bot_nav_bar_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$BotNavBarEvent {
  int get newIndex => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BnbChange value) change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BnbChange value)? change,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BnbChange value)? change,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $BotNavBarEventCopyWith<BotNavBarEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BotNavBarEventCopyWith<$Res> {
  factory $BotNavBarEventCopyWith(
          BotNavBarEvent value, $Res Function(BotNavBarEvent) then) =
      _$BotNavBarEventCopyWithImpl<$Res>;
  $Res call({int newIndex});
}

/// @nodoc
class _$BotNavBarEventCopyWithImpl<$Res>
    implements $BotNavBarEventCopyWith<$Res> {
  _$BotNavBarEventCopyWithImpl(this._value, this._then);

  final BotNavBarEvent _value;
  // ignore: unused_field
  final $Res Function(BotNavBarEvent) _then;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_value.copyWith(
      newIndex: newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
abstract class _$$_BnbChangeCopyWith<$Res>
    implements $BotNavBarEventCopyWith<$Res> {
  factory _$$_BnbChangeCopyWith(
          _$_BnbChange value, $Res Function(_$_BnbChange) then) =
      __$$_BnbChangeCopyWithImpl<$Res>;
  @override
  $Res call({int newIndex});
}

/// @nodoc
class __$$_BnbChangeCopyWithImpl<$Res>
    extends _$BotNavBarEventCopyWithImpl<$Res>
    implements _$$_BnbChangeCopyWith<$Res> {
  __$$_BnbChangeCopyWithImpl(
      _$_BnbChange _value, $Res Function(_$_BnbChange) _then)
      : super(_value, (v) => _then(v as _$_BnbChange));

  @override
  _$_BnbChange get _value => super._value as _$_BnbChange;

  @override
  $Res call({
    Object? newIndex = freezed,
  }) {
    return _then(_$_BnbChange(
      newIndex == freezed
          ? _value.newIndex
          : newIndex // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$_BnbChange implements _BnbChange {
  const _$_BnbChange(this.newIndex);

  @override
  final int newIndex;

  @override
  String toString() {
    return 'BotNavBarEvent.change(newIndex: $newIndex)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_BnbChange &&
            const DeepCollectionEquality().equals(other.newIndex, newIndex));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(newIndex));

  @JsonKey(ignore: true)
  @override
  _$$_BnbChangeCopyWith<_$_BnbChange> get copyWith =>
      __$$_BnbChangeCopyWithImpl<_$_BnbChange>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(int newIndex) change,
  }) {
    return change(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(int newIndex)? change,
  }) {
    return change?.call(newIndex);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(int newIndex)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(newIndex);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_BnbChange value) change,
  }) {
    return change(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_BnbChange value)? change,
  }) {
    return change?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_BnbChange value)? change,
    required TResult orElse(),
  }) {
    if (change != null) {
      return change(this);
    }
    return orElse();
  }
}

abstract class _BnbChange implements BotNavBarEvent {
  const factory _BnbChange(final int newIndex) = _$_BnbChange;

  @override
  int get newIndex;
  @override
  @JsonKey(ignore: true)
  _$$_BnbChangeCopyWith<_$_BnbChange> get copyWith =>
      throw _privateConstructorUsedError;
}
