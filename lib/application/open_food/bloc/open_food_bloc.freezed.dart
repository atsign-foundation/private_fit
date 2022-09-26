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
    required TResult Function(String qRdata) qrDataOnSuccess,
    required TResult Function(Product product) saveProductData,
    required TResult Function() getFoodFromDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrDataOnSuccess value) qrDataOnSuccess,
    required TResult Function(_saveProductData value) saveProductData,
    required TResult Function(_getFoodFromDess value) getFoodFromDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
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
abstract class _$$_QrDataOnSuccessCopyWith<$Res> {
  factory _$$_QrDataOnSuccessCopyWith(
          _$_QrDataOnSuccess value, $Res Function(_$_QrDataOnSuccess) then) =
      __$$_QrDataOnSuccessCopyWithImpl<$Res>;
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
    required TResult Function(Product product) saveProductData,
    required TResult Function() getFoodFromDess,
  }) {
    return qrDataOnSuccess(qRdata);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
  }) {
    return qrDataOnSuccess?.call(qRdata);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
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
    required TResult Function(_saveProductData value) saveProductData,
    required TResult Function(_getFoodFromDess value) getFoodFromDess,
  }) {
    return qrDataOnSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
  }) {
    return qrDataOnSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
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

  String get qRdata;
  @JsonKey(ignore: true)
  _$$_QrDataOnSuccessCopyWith<_$_QrDataOnSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_saveProductDataCopyWith<$Res> {
  factory _$$_saveProductDataCopyWith(
          _$_saveProductData value, $Res Function(_$_saveProductData) then) =
      __$$_saveProductDataCopyWithImpl<$Res>;
  $Res call({Product product});
}

/// @nodoc
class __$$_saveProductDataCopyWithImpl<$Res>
    extends _$OpenFoodEventCopyWithImpl<$Res>
    implements _$$_saveProductDataCopyWith<$Res> {
  __$$_saveProductDataCopyWithImpl(
      _$_saveProductData _value, $Res Function(_$_saveProductData) _then)
      : super(_value, (v) => _then(v as _$_saveProductData));

  @override
  _$_saveProductData get _value => super._value as _$_saveProductData;

  @override
  $Res call({
    Object? product = freezed,
  }) {
    return _then(_$_saveProductData(
      product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product,
    ));
  }
}

/// @nodoc

class _$_saveProductData implements _saveProductData {
  const _$_saveProductData(this.product);

  @override
  final Product product;

  @override
  String toString() {
    return 'OpenFoodEvent.saveProductData(product: $product)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_saveProductData &&
            const DeepCollectionEquality().equals(other.product, product));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(product));

  @JsonKey(ignore: true)
  @override
  _$$_saveProductDataCopyWith<_$_saveProductData> get copyWith =>
      __$$_saveProductDataCopyWithImpl<_$_saveProductData>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qRdata) qrDataOnSuccess,
    required TResult Function(Product product) saveProductData,
    required TResult Function() getFoodFromDess,
  }) {
    return saveProductData(product);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
  }) {
    return saveProductData?.call(product);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
    required TResult orElse(),
  }) {
    if (saveProductData != null) {
      return saveProductData(product);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrDataOnSuccess value) qrDataOnSuccess,
    required TResult Function(_saveProductData value) saveProductData,
    required TResult Function(_getFoodFromDess value) getFoodFromDess,
  }) {
    return saveProductData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
  }) {
    return saveProductData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
    required TResult orElse(),
  }) {
    if (saveProductData != null) {
      return saveProductData(this);
    }
    return orElse();
  }
}

abstract class _saveProductData implements OpenFoodEvent {
  const factory _saveProductData(final Product product) = _$_saveProductData;

  Product get product;
  @JsonKey(ignore: true)
  _$$_saveProductDataCopyWith<_$_saveProductData> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_getFoodFromDessCopyWith<$Res> {
  factory _$$_getFoodFromDessCopyWith(
          _$_getFoodFromDess value, $Res Function(_$_getFoodFromDess) then) =
      __$$_getFoodFromDessCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_getFoodFromDessCopyWithImpl<$Res>
    extends _$OpenFoodEventCopyWithImpl<$Res>
    implements _$$_getFoodFromDessCopyWith<$Res> {
  __$$_getFoodFromDessCopyWithImpl(
      _$_getFoodFromDess _value, $Res Function(_$_getFoodFromDess) _then)
      : super(_value, (v) => _then(v as _$_getFoodFromDess));

  @override
  _$_getFoodFromDess get _value => super._value as _$_getFoodFromDess;
}

/// @nodoc

class _$_getFoodFromDess implements _getFoodFromDess {
  const _$_getFoodFromDess();

  @override
  String toString() {
    return 'OpenFoodEvent.getFoodFromDess()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_getFoodFromDess);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String qRdata) qrDataOnSuccess,
    required TResult Function(Product product) saveProductData,
    required TResult Function() getFoodFromDess,
  }) {
    return getFoodFromDess();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
  }) {
    return getFoodFromDess?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String qRdata)? qrDataOnSuccess,
    TResult Function(Product product)? saveProductData,
    TResult Function()? getFoodFromDess,
    required TResult orElse(),
  }) {
    if (getFoodFromDess != null) {
      return getFoodFromDess();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_QrDataOnSuccess value) qrDataOnSuccess,
    required TResult Function(_saveProductData value) saveProductData,
    required TResult Function(_getFoodFromDess value) getFoodFromDess,
  }) {
    return getFoodFromDess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
  }) {
    return getFoodFromDess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_QrDataOnSuccess value)? qrDataOnSuccess,
    TResult Function(_saveProductData value)? saveProductData,
    TResult Function(_getFoodFromDess value)? getFoodFromDess,
    required TResult orElse(),
  }) {
    if (getFoodFromDess != null) {
      return getFoodFromDess(this);
    }
    return orElse();
  }
}

abstract class _getFoodFromDess implements OpenFoodEvent {
  const factory _getFoodFromDess() = _$_getFoodFromDess;
}

/// @nodoc
mixin _$OpenFoodState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
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
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) {
    return initial();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) {
    return initial?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
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
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
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
abstract class _$$_FailureGettingFoodCopyWith<$Res> {
  factory _$$_FailureGettingFoodCopyWith(_$_FailureGettingFood value,
          $Res Function(_$_FailureGettingFood) then) =
      __$$_FailureGettingFoodCopyWithImpl<$Res>;
  $Res call({OpenFoodFailures openFoodfailures});

  $OpenFoodFailuresCopyWith<$Res> get openFoodfailures;
}

/// @nodoc
class __$$_FailureGettingFoodCopyWithImpl<$Res>
    extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_FailureGettingFoodCopyWith<$Res> {
  __$$_FailureGettingFoodCopyWithImpl(
      _$_FailureGettingFood _value, $Res Function(_$_FailureGettingFood) _then)
      : super(_value, (v) => _then(v as _$_FailureGettingFood));

  @override
  _$_FailureGettingFood get _value => super._value as _$_FailureGettingFood;

  @override
  $Res call({
    Object? openFoodfailures = freezed,
  }) {
    return _then(_$_FailureGettingFood(
      openFoodfailures == freezed
          ? _value.openFoodfailures
          : openFoodfailures // ignore: cast_nullable_to_non_nullable
              as OpenFoodFailures,
    ));
  }

  @override
  $OpenFoodFailuresCopyWith<$Res> get openFoodfailures {
    return $OpenFoodFailuresCopyWith<$Res>(_value.openFoodfailures, (value) {
      return _then(_value.copyWith(openFoodfailures: value));
    });
  }
}

/// @nodoc

class _$_FailureGettingFood implements _FailureGettingFood {
  const _$_FailureGettingFood(this.openFoodfailures);

  @override
  final OpenFoodFailures openFoodfailures;

  @override
  String toString() {
    return 'OpenFoodState.failureGettingFood(openFoodfailures: $openFoodfailures)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_FailureGettingFood &&
            const DeepCollectionEquality()
                .equals(other.openFoodfailures, openFoodfailures));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(openFoodfailures));

  @JsonKey(ignore: true)
  @override
  _$$_FailureGettingFoodCopyWith<_$_FailureGettingFood> get copyWith =>
      __$$_FailureGettingFoodCopyWithImpl<_$_FailureGettingFood>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) {
    return failureGettingFood(openFoodfailures);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) {
    return failureGettingFood?.call(openFoodfailures);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (failureGettingFood != null) {
      return failureGettingFood(openFoodfailures);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) {
    return failureGettingFood(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) {
    return failureGettingFood?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (failureGettingFood != null) {
      return failureGettingFood(this);
    }
    return orElse();
  }
}

abstract class _FailureGettingFood implements OpenFoodState {
  const factory _FailureGettingFood(final OpenFoodFailures openFoodfailures) =
      _$_FailureGettingFood;

  OpenFoodFailures get openFoodfailures;
  @JsonKey(ignore: true)
  _$$_FailureGettingFoodCopyWith<_$_FailureGettingFood> get copyWith =>
      throw _privateConstructorUsedError;
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
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) {
    return loadSuccess(fetchedProduct);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) {
    return loadSuccess?.call(fetchedProduct);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
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
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) {
    return loadSuccess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) {
    return loadSuccess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
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

  FetchedProduct get fetchedProduct;
  @JsonKey(ignore: true)
  _$$_LoadSuccessCopyWith<_$_LoadSuccess> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_dataSavedSuccesfulCopyWith<$Res> {
  factory _$$_dataSavedSuccesfulCopyWith(_$_dataSavedSuccesful value,
          $Res Function(_$_dataSavedSuccesful) then) =
      __$$_dataSavedSuccesfulCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_dataSavedSuccesfulCopyWithImpl<$Res>
    extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_dataSavedSuccesfulCopyWith<$Res> {
  __$$_dataSavedSuccesfulCopyWithImpl(
      _$_dataSavedSuccesful _value, $Res Function(_$_dataSavedSuccesful) _then)
      : super(_value, (v) => _then(v as _$_dataSavedSuccesful));

  @override
  _$_dataSavedSuccesful get _value => super._value as _$_dataSavedSuccesful;
}

/// @nodoc

class _$_dataSavedSuccesful implements _dataSavedSuccesful {
  const _$_dataSavedSuccesful();

  @override
  String toString() {
    return 'OpenFoodState.dataSavedSuccesful()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_dataSavedSuccesful);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) {
    return dataSavedSuccesful();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) {
    return dataSavedSuccesful?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (dataSavedSuccesful != null) {
      return dataSavedSuccesful();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) {
    return dataSavedSuccesful(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) {
    return dataSavedSuccesful?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (dataSavedSuccesful != null) {
      return dataSavedSuccesful(this);
    }
    return orElse();
  }
}

abstract class _dataSavedSuccesful implements OpenFoodState {
  const factory _dataSavedSuccesful() = _$_dataSavedSuccesful;
}

/// @nodoc
abstract class _$$_failureFetchingFromoDessCopyWith<$Res> {
  factory _$$_failureFetchingFromoDessCopyWith(
          _$_failureFetchingFromoDess value,
          $Res Function(_$_failureFetchingFromoDess) then) =
      __$$_failureFetchingFromoDessCopyWithImpl<$Res>;
  $Res call({AtPlatformFailure failure});

  $AtPlatformFailureCopyWith<$Res> get failure;
}

/// @nodoc
class __$$_failureFetchingFromoDessCopyWithImpl<$Res>
    extends _$OpenFoodStateCopyWithImpl<$Res>
    implements _$$_failureFetchingFromoDessCopyWith<$Res> {
  __$$_failureFetchingFromoDessCopyWithImpl(_$_failureFetchingFromoDess _value,
      $Res Function(_$_failureFetchingFromoDess) _then)
      : super(_value, (v) => _then(v as _$_failureFetchingFromoDess));

  @override
  _$_failureFetchingFromoDess get _value =>
      super._value as _$_failureFetchingFromoDess;

  @override
  $Res call({
    Object? failure = freezed,
  }) {
    return _then(_$_failureFetchingFromoDess(
      failure == freezed
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AtPlatformFailure,
    ));
  }

  @override
  $AtPlatformFailureCopyWith<$Res> get failure {
    return $AtPlatformFailureCopyWith<$Res>(_value.failure, (value) {
      return _then(_value.copyWith(failure: value));
    });
  }
}

/// @nodoc

class _$_failureFetchingFromoDess implements _failureFetchingFromoDess {
  const _$_failureFetchingFromoDess(this.failure);

  @override
  final AtPlatformFailure failure;

  @override
  String toString() {
    return 'OpenFoodState.failureFetchingFromoDess(failure: $failure)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_failureFetchingFromoDess &&
            const DeepCollectionEquality().equals(other.failure, failure));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(failure));

  @JsonKey(ignore: true)
  @override
  _$$_failureFetchingFromoDessCopyWith<_$_failureFetchingFromoDess>
      get copyWith => __$$_failureFetchingFromoDessCopyWithImpl<
          _$_failureFetchingFromoDess>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() initial,
    required TResult Function(OpenFoodFailures openFoodfailures)
        failureGettingFood,
    required TResult Function(FetchedProduct fetchedProduct) loadSuccess,
    required TResult Function() dataSavedSuccesful,
    required TResult Function(AtPlatformFailure failure)
        failureFetchingFromoDess,
  }) {
    return failureFetchingFromoDess(failure);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
  }) {
    return failureFetchingFromoDess?.call(failure);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? initial,
    TResult Function(OpenFoodFailures openFoodfailures)? failureGettingFood,
    TResult Function(FetchedProduct fetchedProduct)? loadSuccess,
    TResult Function()? dataSavedSuccesful,
    TResult Function(AtPlatformFailure failure)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (failureFetchingFromoDess != null) {
      return failureFetchingFromoDess(failure);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
    required TResult Function(_FailureGettingFood value) failureGettingFood,
    required TResult Function(_LoadSuccess value) loadSuccess,
    required TResult Function(_dataSavedSuccesful value) dataSavedSuccesful,
    required TResult Function(_failureFetchingFromoDess value)
        failureFetchingFromoDess,
  }) {
    return failureFetchingFromoDess(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
  }) {
    return failureFetchingFromoDess?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    TResult Function(_FailureGettingFood value)? failureGettingFood,
    TResult Function(_LoadSuccess value)? loadSuccess,
    TResult Function(_dataSavedSuccesful value)? dataSavedSuccesful,
    TResult Function(_failureFetchingFromoDess value)? failureFetchingFromoDess,
    required TResult orElse(),
  }) {
    if (failureFetchingFromoDess != null) {
      return failureFetchingFromoDess(this);
    }
    return orElse();
  }
}

abstract class _failureFetchingFromoDess implements OpenFoodState {
  const factory _failureFetchingFromoDess(final AtPlatformFailure failure) =
      _$_failureFetchingFromoDess;

  AtPlatformFailure get failure;
  @JsonKey(ignore: true)
  _$$_failureFetchingFromoDessCopyWith<_$_failureFetchingFromoDess>
      get copyWith => throw _privateConstructorUsedError;
}
