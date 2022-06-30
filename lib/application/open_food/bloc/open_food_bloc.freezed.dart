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
  String get qRdata => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qRdata) qrDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrDataOnSuccess value) qrDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenFoodEventCopyWith<OpenFoodEvent> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFoodEventCopyWith<$Res> {
  factory $OpenFoodEventCopyWith(
          OpenFoodEvent value, $Res Function(OpenFoodEvent) then) =
      _$OpenFoodEventCopyWithImpl<$Res>;
  $Res call({String qRdata});
}

/// @nodoc
class _$OpenFoodEventCopyWithImpl<$Res>
    implements $OpenFoodEventCopyWith<$Res> {
  _$OpenFoodEventCopyWithImpl(this._value, this._then);

  final OpenFoodEvent _value;
  // ignore: unused_field
  final $Res Function(OpenFoodEvent) _then;

  @override
  $Res call({
    Object? qRdata = freezed,
  }) {
    return _then(_value.copyWith(
      qRdata: qRdata == freezed
          ? _value.qRdata
          : qRdata // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$$_QrDataOnSuccessCopyWith<$Res>
    implements $OpenFoodEventCopyWith<$Res> {
  factory _$$_QrDataOnSuccessCopyWith(
          _$_QrDataOnSuccess value, $Res Function(_$_QrDataOnSuccess) then) =
      __$$_QrDataOnSuccessCopyWithImpl<$Res>;
  @override
  $Res call({String qRdata});
}

/// @nodoc
class __$$_QrDataOnSuccessCopyWithImpl<$Res>
    extends _$OpenFoodEventCopyWithImpl<$Res>
    implements _$$_QrDataOnSuccessCopyWith<$Res> {
  __$$_QrDataOnSuccessCopyWithImpl(
      _$_QrDataOnSuccess _value, $Res Function(_$_QrDataOnSuccess) _then)
      : super(_value, (v) => _then(v as _$_QrDataOnSuccess));

  @override
  _$_QrDataOnSuccess get _value => super._value as _$_QrDataOnSuccess;

  @override
  $Res call({
    Object? qRdata = freezed,
  }) {
    return _then(_$_QrDataOnSuccess(
      qRdata == freezed
          ? _value.qRdata
          : qRdata // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_QrDataOnSuccess implements _QrDataOnSuccess {
  const _$_QrDataOnSuccess(this.qRdata);

  @override
  final String qRdata;

  @override
  String toString() {
    return 'OpenFoodEvent.qrDataOnSuccess(qRdata: $qRdata)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_QrDataOnSuccess &&
            const DeepCollectionEquality().equals(other.qRdata, qRdata));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(qRdata));

  @JsonKey(ignore: true)
  @override
  _$$_QrDataOnSuccessCopyWith<_$_QrDataOnSuccess> get copyWith =>
      __$$_QrDataOnSuccessCopyWithImpl<_$_QrDataOnSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qRdata) qrDataOnSuccess,
  }) {
    return qrDataOnSuccess(qRdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
  }) {
    return qrDataOnSuccess?.call(qRdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    required TResult orElse(),
  }) {
    if (qrDataOnSuccess != null) {
      return qrDataOnSuccess(qRdata);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrDataOnSuccess value) qrDataOnSuccess,
  }) {
    return qrDataOnSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
  }) {
    return qrDataOnSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    required TResult orElse(),
  }) {
    if (qrDataOnSuccess != null) {
      return qrDataOnSuccess(this);
    }
    return orElse();
  }
}

abstract class _QrDataOnSuccess implements OpenFoodEvent {
  const factory _QrDataOnSuccess(final String qRdata) = _$_QrDataOnSuccess;

  @override
  String get qRdata => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_QrDataOnSuccessCopyWith<_$_QrDataOnSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$OpenFoodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
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
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
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
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
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
abstract class _$$_LoadSuccessCopyWith<$Res> {
  factory _$$_LoadSuccessCopyWith(
          _$_LoadSuccess value, $Res Function(_$_LoadSuccess) then) =
      __$$_LoadSuccessCopyWithImpl<$Res>;
  $Res call({FetchedProduct fetchedProduct});
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

  @override
  $Res call({
    Object? fetchedProduct = freezed,
  }) {
    return _then(_$_LoadSuccess(
      fetchedProduct == freezed
          ? _value.fetchedProduct
          : fetchedProduct // ignore: cast_nullable_to_non_nullable
              as FetchedProduct,
    ));
  }
}

/// @nodoc

class _$_LoadSuccess implements _LoadSuccess {
  const _$_LoadSuccess(this.fetchedProduct);

  @override
  final FetchedProduct fetchedProduct;

  @override
  String toString() {
    return 'OpenFoodState.loadSuccess(fetchedProduct: $fetchedProduct)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoadSuccess &&
            const DeepCollectionEquality()
                .equals(other.fetchedProduct, fetchedProduct));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(fetchedProduct));

  @JsonKey(ignore: true)
  @override
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      __$$_LoadSuccessCopyWithImpl<_$_LoadSuccess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
  }) {
    return loadSuccess(fetchedProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
  }) {
    return loadSuccess?.call(fetchedProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(fetchedProduct);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_LoadSuccess value) loadSuccess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_LoadSuccess value)? loadSuccess,
    required TResult orElse(),
  }) {
    if (loadSuccess != null) {
      return loadSuccess(this);
    }
    return orElse();
  }
}

abstract class _LoadSuccess implements OpenFoodState {
  const factory _LoadSuccess(final FetchedProduct fetchedProduct) =
      _$_LoadSuccess;

  FetchedProduct get fetchedProduct => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}
