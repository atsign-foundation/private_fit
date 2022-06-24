// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_food_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenFoodEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoodResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoodResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoodResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoodResult value) getFoodResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoodResult value)? getFoodResult,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoodResult value)? getFoodResult,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFoodEventCopyWith<$Res> {
  factory $OpenFoodEventCopyWith(
          OpenFoodEvent value, $Res Function(OpenFoodEvent) then) =
      _$OpenFoodEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenFoodEventCopyWithImpl<$Res>
    implements $OpenFoodEventCopyWith<$Res> {
  _$OpenFoodEventCopyWithImpl(this._value, this._then);

  final OpenFoodEvent _value;
  // ignore: unused_field
  final $Res Function(OpenFoodEvent) _then;
}

/// @nodoc
abstract class _$$_GetFoodResultCopyWith<$Res> {
  factory _$$_GetFoodResultCopyWith(
          _$_GetFoodResult value, $Res Function(_$_GetFoodResult) then) =
      __$$_GetFoodResultCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_GetFoodResultCopyWithImpl<$Res>
    extends _$OpenFoodEventCopyWithImpl<$Res>
    implements _$$_GetFoodResultCopyWith<$Res> {
  __$$_GetFoodResultCopyWithImpl(
      _$_GetFoodResult _value, $Res Function(_$_GetFoodResult) _then)
      : super(_value, (v) => _then(v as _$_GetFoodResult));

  @override
  _$_GetFoodResult get _value => super._value as _$_GetFoodResult;
}

/// @nodoc

class _$_GetFoodResult implements _GetFoodResult {
  const _$_GetFoodResult();

  @override
  String toString() {
    return 'OpenFoodEvent.getFoodResult()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_GetFoodResult);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() getFoodResult,
  }) {
    return getFoodResult();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? getFoodResult,
  }) {
    return getFoodResult?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? getFoodResult,
    required TResult orElse(),
  }) {
    if (getFoodResult != null) {
      return getFoodResult();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_GetFoodResult value) getFoodResult,
  }) {
    return getFoodResult(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_GetFoodResult value)? getFoodResult,
  }) {
    return getFoodResult?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_GetFoodResult value)? getFoodResult,
    required TResult orElse(),
  }) {
    if (getFoodResult != null) {
      return getFoodResult(this);
    }
    return orElse();
  }
}

abstract class _GetFoodResult implements OpenFoodEvent {
  const factory _GetFoodResult() = _$_GetFoodResult;
}

/// @nodoc
mixin _$OpenFoodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFoodStateCopyWith<$Res> {
  factory $OpenFoodStateCopyWith(
          OpenFoodState value, $Res Function(OpenFoodState) then) =
      _$OpenFoodStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenFoodStateCopyWithImpl<$Res>
    implements $OpenFoodStateCopyWith<$Res> {
  _$OpenFoodStateCopyWithImpl(this._value, this._then);

  final OpenFoodState _value;
  // ignore: unused_field
  final $Res Function(OpenFoodState) _then;
}

/// @nodoc
abstract class _$$_InitialCopyWith<$Res> {
  factory _$$_InitialCopyWith(
          _$_Initial value, $Res Function(_$_Initial) then) =
      __$$_InitialCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_InitialCopyWithImpl<$Res> extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_InitialCopyWith<$Res> {
  __$$_InitialCopyWithImpl(_$_Initial _value, $Res Function(_$_Initial) _then)
      : super(_value, (v) => _then(v as _$_Initial));

  @override
  _$_Initial get _value => super._value as _$_Initial;
}

/// @nodoc

class _$_Initial implements _Initial {
  const _$_Initial();

  @override
  String toString() {
    return 'OpenFoodState.initial()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Initial);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements OpenFoodState {
  const factory _Initial() = _$_Initial;
}

/// @nodoc
abstract class _$$_LoadingCopyWith<$Res> {
  factory _$$_LoadingCopyWith(
          _$_Loading value, $Res Function(_$_Loading) then) =
      __$$_LoadingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadingCopyWithImpl<$Res> extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_LoadingCopyWith<$Res> {
  __$$_LoadingCopyWithImpl(_$_Loading _value, $Res Function(_$_Loading) _then)
      : super(_value, (v) => _then(v as _$_Loading));

  @override
  _$_Loading get _value => super._value as _$_Loading;
}

/// @nodoc

class _$_Loading implements _Loading {
  const _$_Loading();

  @override
  String toString() {
    return 'OpenFoodState.loading()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Loading);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) {
    return loading();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) {
    return loading?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) {
    return loading(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) {
    return loading?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (loading != null) {
      return loading(this);
    }
    return orElse();
  }
}

abstract class _Loading implements OpenFoodState {
  const factory _Loading() = _$_Loading;
}

/// @nodoc
abstract class _$$_FailureCopyWith<$Res> {
  factory _$$_FailureCopyWith(
          _$_Failure value, $Res Function(_$_Failure) then) =
      __$$_FailureCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_FailureCopyWithImpl<$Res> extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_FailureCopyWith<$Res> {
  __$$_FailureCopyWithImpl(_$_Failure _value, $Res Function(_$_Failure) _then)
      : super(_value, (v) => _then(v as _$_Failure));

  @override
  _$_Failure get _value => super._value as _$_Failure;
}

/// @nodoc

class _$_Failure implements _Failure {
  const _$_Failure();

  @override
  String toString() {
    return 'OpenFoodState.failure()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Failure);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) {
    return failure();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) {
    return failure?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) {
    return failure(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) {
    return failure?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (failure != null) {
      return failure(this);
    }
    return orElse();
  }
}

abstract class _Failure implements OpenFoodState {
  const factory _Failure() = _$_Failure;
}

/// @nodoc
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_LoadSuccessCopyWithImpl<$Res>
    extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_LoadSuccessCopyWith<$Res> {
  __$$_LoadSuccessCopyWithImpl(
      _$_LoadSuccess _value, $Res Function(_$_LoadSuccess) _then)
      : super(_value, (v) => _then(v as _$_LoadSuccess));

  @override
  _$_LoadSuccess get _value => super._value as _$_LoadSuccess;
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess();

  @override
  String toString() {
    return 'OpenFoodState.loadSuccess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_LoadSuccess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) {
    return loadSuccess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) {
    return loadSuccess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements OpenFoodState {
  const factory _LoadSuccess() = _$_LoadSuccess;
}

/// @nodoc
abstract class _$$_onBoardingErrorCopyWith<$Res> {
  factory _$$_onBoardingErrorCopyWith(
          _$_onBoardingError value, $Res Function(_$_onBoardingError) then) =
      __$$_onBoardingErrorCopyWithImpl<$Res>;
  $Res call({Object? object});
}

/// @nodoc
class __$$_onBoardingErrorCopyWithImpl<$Res>
    extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_onBoardingErrorCopyWith<$Res> {
  __$$_onBoardingErrorCopyWithImpl(
      _$_onBoardingError _value, $Res Function(_$_onBoardingError) _then)
      : super(_value, (v) => _then(v as _$_onBoardingError));

  @override
  _$_onBoardingError get _value => super._value as _$_onBoardingError;

  @override
  $Res call({
    Object? object = freezed,
  }) {
    return _then(_$_onBoardingError(
      object == freezed ? _value.object : object,
    ));
  }
}

/// @nodoc

class _$_onBoardingError implements _onBoardingError {
  const _$_onBoardingError(this.object);

  @override
  final Object? object;

  @override
  String toString() {
    return 'OpenFoodState.onBoardingError(object: $object)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_onBoardingError &&
            const DeepCollectionEquality().equals(other.object, object));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(object));

  @JsonKey(ignore: true)
  @override
  _$$_onBoardingErrorCopyWith<_$_onBoardingError> get copyWith =>
      __$$_onBoardingErrorCopyWithImpl<_$_onBoardingError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function() loading,
    required TResult Function() failure,
    required TResult Function() loadSuccess,
    required TResult Function(Object? object) onBoardingError,
  }) {
    return onBoardingError(object);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
  }) {
    return onBoardingError?.call(object);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function()? loading,
    TResult Function()? failure,
    TResult Function()? loadSuccess,
    TResult Function(Object? object)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(object);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_Loading value) loading,
    required TResult Function(_Failure value) failure,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_onBoardingError value) onBoardingError,
  }) {
    return onBoardingError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
  }) {
    return onBoardingError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_Loading value)? loading,
    TResult Function(_Failure value)? failure,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_onBoardingError value)? onBoardingError,
    required TResult orElse(),
  }) {
    if (onBoardingError != null) {
      return onBoardingError(this);
    }
    return orElse();
  }
}

abstract class _onBoardingError implements OpenFoodState {
  const factory _onBoardingError(final Object? object) = _$_onBoardingError;

  Object? get object => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_onBoardingErrorCopyWith<_$_onBoardingError> get copyWith =>
      throw _privateConstructorUsedError;
}
