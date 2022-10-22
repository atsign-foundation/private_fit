// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'open_food_dess_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$OpenFoodDessEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFoodDessEventCopyWith<$Res> {
  factory $OpenFoodDessEventCopyWith(
          OpenFoodDessEvent value, $Res Function(OpenFoodDessEvent) then) =
      _$OpenFoodDessEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$OpenFoodDessEventCopyWithImpl<$Res>
    implements $OpenFoodDessEventCopyWith<$Res> {
  _$OpenFoodDessEventCopyWithImpl(this._value, this._then);

  final OpenFoodDessEvent _value;
  // ignore: unused_field
  final $Res Function(OpenFoodDessEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res>
    extends _$OpenFoodDessEventCopyWithImpl<$Res>
    implements _$$_StartedCopyWith<$Res> {
  __$$_StartedCopyWithImpl(_$_Started _value, $Res Function(_$_Started) _then)
      : super(_value, (v) => _then(v as _$_Started));

  @override
  _$_Started get _value => super._value as _$_Started;
}

/// @nodoc

class _$_Started implements _Started {
  const _$_Started();

  @override
  String toString() {
    return 'OpenFoodDessEvent.started()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Started);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements OpenFoodDessEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
mixin _$OpenFoodDessState {
  bool get isLoaded => throw _privateConstructorUsedError;
  Product? get product => throw _privateConstructorUsedError;
  AtPlatformFailure? get atPlatformFailure =>
      throw _privateConstructorUsedError;
  bool get showErrors => throw _privateConstructorUsedError;
  String? get nutrition_01 => throw _privateConstructorUsedError;
  String? get nutrition_02 => throw _privateConstructorUsedError;
  String? get nutrition_03 => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $OpenFoodDessStateCopyWith<OpenFoodDessState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OpenFoodDessStateCopyWith<$Res> {
  factory $OpenFoodDessStateCopyWith(
          OpenFoodDessState value, $Res Function(OpenFoodDessState) then) =
      _$OpenFoodDessStateCopyWithImpl<$Res>;
  $Res call(
      {bool isLoaded,
      Product? product,
      AtPlatformFailure? atPlatformFailure,
      bool showErrors,
      String? nutrition_01,
      String? nutrition_02,
      String? nutrition_03});

  $AtPlatformFailureCopyWith<$Res>? get atPlatformFailure;
}

/// @nodoc
class _$OpenFoodDessStateCopyWithImpl<$Res>
    implements $OpenFoodDessStateCopyWith<$Res> {
  _$OpenFoodDessStateCopyWithImpl(this._value, this._then);

  final OpenFoodDessState _value;
  // ignore: unused_field
  final $Res Function(OpenFoodDessState) _then;

  @override
  $Res call({
    Object? isLoaded = freezed,
    Object? product = freezed,
    Object? atPlatformFailure = freezed,
    Object? showErrors = freezed,
    Object? nutrition_01 = freezed,
    Object? nutrition_02 = freezed,
    Object? nutrition_03 = freezed,
  }) {
    return _then(_value.copyWith(
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      atPlatformFailure: atPlatformFailure == freezed
          ? _value.atPlatformFailure
          : atPlatformFailure // ignore: cast_nullable_to_non_nullable
              as AtPlatformFailure?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      nutrition_01: nutrition_01 == freezed
          ? _value.nutrition_01
          : nutrition_01 // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition_02: nutrition_02 == freezed
          ? _value.nutrition_02
          : nutrition_02 // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition_03: nutrition_03 == freezed
          ? _value.nutrition_03
          : nutrition_03 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }

  @override
  $AtPlatformFailureCopyWith<$Res>? get atPlatformFailure {
    if (_value.atPlatformFailure == null) {
      return null;
    }

    return $AtPlatformFailureCopyWith<$Res>(_value.atPlatformFailure!, (value) {
      return _then(_value.copyWith(atPlatformFailure: value));
    });
  }
}

/// @nodoc
abstract class _$$_OpenFoodDessStateCopyWith<$Res>
    implements $OpenFoodDessStateCopyWith<$Res> {
  factory _$$_OpenFoodDessStateCopyWith(_$_OpenFoodDessState value,
          $Res Function(_$_OpenFoodDessState) then) =
      __$$_OpenFoodDessStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isLoaded,
      Product? product,
      AtPlatformFailure? atPlatformFailure,
      bool showErrors,
      String? nutrition_01,
      String? nutrition_02,
      String? nutrition_03});

  @override
  $AtPlatformFailureCopyWith<$Res>? get atPlatformFailure;
}

/// @nodoc
class __$$_OpenFoodDessStateCopyWithImpl<$Res>
    extends _$OpenFoodDessStateCopyWithImpl<$Res>
    implements _$$_OpenFoodDessStateCopyWith<$Res> {
  __$$_OpenFoodDessStateCopyWithImpl(
      _$_OpenFoodDessState _value, $Res Function(_$_OpenFoodDessState) _then)
      : super(_value, (v) => _then(v as _$_OpenFoodDessState));

  @override
  _$_OpenFoodDessState get _value => super._value as _$_OpenFoodDessState;

  @override
  $Res call({
    Object? isLoaded = freezed,
    Object? product = freezed,
    Object? atPlatformFailure = freezed,
    Object? showErrors = freezed,
    Object? nutrition_01 = freezed,
    Object? nutrition_02 = freezed,
    Object? nutrition_03 = freezed,
  }) {
    return _then(_$_OpenFoodDessState(
      isLoaded: isLoaded == freezed
          ? _value.isLoaded
          : isLoaded // ignore: cast_nullable_to_non_nullable
              as bool,
      product: product == freezed
          ? _value.product
          : product // ignore: cast_nullable_to_non_nullable
              as Product?,
      atPlatformFailure: atPlatformFailure == freezed
          ? _value.atPlatformFailure
          : atPlatformFailure // ignore: cast_nullable_to_non_nullable
              as AtPlatformFailure?,
      showErrors: showErrors == freezed
          ? _value.showErrors
          : showErrors // ignore: cast_nullable_to_non_nullable
              as bool,
      nutrition_01: nutrition_01 == freezed
          ? _value.nutrition_01
          : nutrition_01 // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition_02: nutrition_02 == freezed
          ? _value.nutrition_02
          : nutrition_02 // ignore: cast_nullable_to_non_nullable
              as String?,
      nutrition_03: nutrition_03 == freezed
          ? _value.nutrition_03
          : nutrition_03 // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$_OpenFoodDessState implements _OpenFoodDessState {
  const _$_OpenFoodDessState(
      {required this.isLoaded,
      this.product,
      this.atPlatformFailure,
      required this.showErrors,
      this.nutrition_01,
      this.nutrition_02,
      this.nutrition_03});

  @override
  final bool isLoaded;
  @override
  final Product? product;
  @override
  final AtPlatformFailure? atPlatformFailure;
  @override
  final bool showErrors;
  @override
  final String? nutrition_01;
  @override
  final String? nutrition_02;
  @override
  final String? nutrition_03;

  @override
  String toString() {
    return 'OpenFoodDessState(isLoaded: $isLoaded, product: $product, atPlatformFailure: $atPlatformFailure, showErrors: $showErrors, nutrition_01: $nutrition_01, nutrition_02: $nutrition_02, nutrition_03: $nutrition_03)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OpenFoodDessState &&
            const DeepCollectionEquality().equals(other.isLoaded, isLoaded) &&
            const DeepCollectionEquality().equals(other.product, product) &&
            const DeepCollectionEquality()
                .equals(other.atPlatformFailure, atPlatformFailure) &&
            const DeepCollectionEquality()
                .equals(other.showErrors, showErrors) &&
            const DeepCollectionEquality()
                .equals(other.nutrition_01, nutrition_01) &&
            const DeepCollectionEquality()
                .equals(other.nutrition_02, nutrition_02) &&
            const DeepCollectionEquality()
                .equals(other.nutrition_03, nutrition_03));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isLoaded),
      const DeepCollectionEquality().hash(product),
      const DeepCollectionEquality().hash(atPlatformFailure),
      const DeepCollectionEquality().hash(showErrors),
      const DeepCollectionEquality().hash(nutrition_01),
      const DeepCollectionEquality().hash(nutrition_02),
      const DeepCollectionEquality().hash(nutrition_03));

  @JsonKey(ignore: true)
  @override
  _$$_OpenFoodDessStateCopyWith<_$_OpenFoodDessState> get copyWith =>
      __$$_OpenFoodDessStateCopyWithImpl<_$_OpenFoodDessState>(
          this, _$identity);
}

abstract class _OpenFoodDessState implements OpenFoodDessState {
  const factory _OpenFoodDessState(
      {required final bool isLoaded,
      final Product? product,
      final AtPlatformFailure? atPlatformFailure,
      required final bool showErrors,
      final String? nutrition_01,
      final String? nutrition_02,
      final String? nutrition_03}) = _$_OpenFoodDessState;

  @override
  bool get isLoaded;
  @override
  Product? get product;
  @override
  AtPlatformFailure? get atPlatformFailure;
  @override
  bool get showErrors;
  @override
  String? get nutrition_01;
  @override
  String? get nutrition_02;
  @override
  String? get nutrition_03;
  @override
  @JsonKey(ignore: true)
  _$$_OpenFoodDessStateCopyWith<_$_OpenFoodDessState> get copyWith =>
      throw _privateConstructorUsedError;
}
