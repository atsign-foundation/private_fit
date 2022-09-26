// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_in_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SignInEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBoardAtSign,
    required TResult Function(String atSign) initAtPreferences,
    required TResult Function(AtClientPreference atClientPreference)
        setAtClientPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_onBoardAtSign value) onBoardAtSign,
    required TResult Function(_initAtPreferences value) initAtPreferences,
    required TResult Function(_setAtClientPreferences value)
        setAtClientPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInEventCopyWith<$Res> {
  factory $SignInEventCopyWith(
          SignInEvent value, $Res Function(SignInEvent) then) =
      _$SignInEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SignInEventCopyWithImpl<$Res> implements $SignInEventCopyWith<$Res> {
  _$SignInEventCopyWithImpl(this._value, this._then);

  final SignInEvent _value;
  // ignore: unused_field
  final $Res Function(SignInEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SignInEventCopyWithImpl<$Res>
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
    return 'SignInEvent.started()';
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
    required TResult Function() onBoardAtSign,
    required TResult Function(String atSign) initAtPreferences,
    required TResult Function(AtClientPreference atClientPreference)
        setAtClientPreferences,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
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
    required TResult Function(_onBoardAtSign value) onBoardAtSign,
    required TResult Function(_initAtPreferences value) initAtPreferences,
    required TResult Function(_setAtClientPreferences value)
        setAtClientPreferences,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SignInEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_onBoardAtSignCopyWith<$Res> {
  factory _$$_onBoardAtSignCopyWith(
          _$_onBoardAtSign value, $Res Function(_$_onBoardAtSign) then) =
      __$$_onBoardAtSignCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_onBoardAtSignCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_onBoardAtSignCopyWith<$Res> {
  __$$_onBoardAtSignCopyWithImpl(
      _$_onBoardAtSign _value, $Res Function(_$_onBoardAtSign) _then)
      : super(_value, (v) => _then(v as _$_onBoardAtSign));

  @override
  _$_onBoardAtSign get _value => super._value as _$_onBoardAtSign;
}

/// @nodoc

class _$_onBoardAtSign implements _onBoardAtSign {
  const _$_onBoardAtSign();

  @override
  String toString() {
    return 'SignInEvent.onBoardAtSign()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_onBoardAtSign);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBoardAtSign,
    required TResult Function(String atSign) initAtPreferences,
    required TResult Function(AtClientPreference atClientPreference)
        setAtClientPreferences,
  }) {
    return onBoardAtSign();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
  }) {
    return onBoardAtSign?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (onBoardAtSign != null) {
      return onBoardAtSign();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_onBoardAtSign value) onBoardAtSign,
    required TResult Function(_initAtPreferences value) initAtPreferences,
    required TResult Function(_setAtClientPreferences value)
        setAtClientPreferences,
  }) {
    return onBoardAtSign(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
  }) {
    return onBoardAtSign?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (onBoardAtSign != null) {
      return onBoardAtSign(this);
    }
    return orElse();
  }
}

abstract class _onBoardAtSign implements SignInEvent {
  const factory _onBoardAtSign() = _$_onBoardAtSign;
}

/// @nodoc
abstract class _$$_initAtPreferencesCopyWith<$Res> {
  factory _$$_initAtPreferencesCopyWith(_$_initAtPreferences value,
          $Res Function(_$_initAtPreferences) then) =
      __$$_initAtPreferencesCopyWithImpl<$Res>;
  $Res call({String atSign});
}

/// @nodoc
class __$$_initAtPreferencesCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_initAtPreferencesCopyWith<$Res> {
  __$$_initAtPreferencesCopyWithImpl(
      _$_initAtPreferences _value, $Res Function(_$_initAtPreferences) _then)
      : super(_value, (v) => _then(v as _$_initAtPreferences));

  @override
  _$_initAtPreferences get _value => super._value as _$_initAtPreferences;

  @override
  $Res call({
    Object? atSign = freezed,
  }) {
    return _then(_$_initAtPreferences(
      atSign == freezed
          ? _value.atSign
          : atSign // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_initAtPreferences implements _initAtPreferences {
  const _$_initAtPreferences(this.atSign);

  @override
  final String atSign;

  @override
  String toString() {
    return 'SignInEvent.initAtPreferences(atSign: $atSign)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initAtPreferences &&
            const DeepCollectionEquality().equals(other.atSign, atSign));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(atSign));

  @JsonKey(ignore: true)
  @override
  _$$_initAtPreferencesCopyWith<_$_initAtPreferences> get copyWith =>
      __$$_initAtPreferencesCopyWithImpl<_$_initAtPreferences>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBoardAtSign,
    required TResult Function(String atSign) initAtPreferences,
    required TResult Function(AtClientPreference atClientPreference)
        setAtClientPreferences,
  }) {
    return initAtPreferences(atSign);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
  }) {
    return initAtPreferences?.call(atSign);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (initAtPreferences != null) {
      return initAtPreferences(atSign);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_onBoardAtSign value) onBoardAtSign,
    required TResult Function(_initAtPreferences value) initAtPreferences,
    required TResult Function(_setAtClientPreferences value)
        setAtClientPreferences,
  }) {
    return initAtPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
  }) {
    return initAtPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (initAtPreferences != null) {
      return initAtPreferences(this);
    }
    return orElse();
  }
}

abstract class _initAtPreferences implements SignInEvent {
  const factory _initAtPreferences(final String atSign) = _$_initAtPreferences;

  String get atSign;
  @JsonKey(ignore: true)
  _$$_initAtPreferencesCopyWith<_$_initAtPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_setAtClientPreferencesCopyWith<$Res> {
  factory _$$_setAtClientPreferencesCopyWith(_$_setAtClientPreferences value,
          $Res Function(_$_setAtClientPreferences) then) =
      __$$_setAtClientPreferencesCopyWithImpl<$Res>;
  $Res call({AtClientPreference atClientPreference});
}

/// @nodoc
class __$$_setAtClientPreferencesCopyWithImpl<$Res>
    extends _$SignInEventCopyWithImpl<$Res>
    implements _$$_setAtClientPreferencesCopyWith<$Res> {
  __$$_setAtClientPreferencesCopyWithImpl(_$_setAtClientPreferences _value,
      $Res Function(_$_setAtClientPreferences) _then)
      : super(_value, (v) => _then(v as _$_setAtClientPreferences));

  @override
  _$_setAtClientPreferences get _value =>
      super._value as _$_setAtClientPreferences;

  @override
  $Res call({
    Object? atClientPreference = freezed,
  }) {
    return _then(_$_setAtClientPreferences(
      atClientPreference == freezed
          ? _value.atClientPreference
          : atClientPreference // ignore: cast_nullable_to_non_nullable
              as AtClientPreference,
    ));
  }
}

/// @nodoc

class _$_setAtClientPreferences implements _setAtClientPreferences {
  const _$_setAtClientPreferences(this.atClientPreference);

  @override
  final AtClientPreference atClientPreference;

  @override
  String toString() {
    return 'SignInEvent.setAtClientPreferences(atClientPreference: $atClientPreference)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_setAtClientPreferences &&
            const DeepCollectionEquality()
                .equals(other.atClientPreference, atClientPreference));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(atClientPreference));

  @JsonKey(ignore: true)
  @override
  _$$_setAtClientPreferencesCopyWith<_$_setAtClientPreferences> get copyWith =>
      __$$_setAtClientPreferencesCopyWithImpl<_$_setAtClientPreferences>(
          this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function() onBoardAtSign,
    required TResult Function(String atSign) initAtPreferences,
    required TResult Function(AtClientPreference atClientPreference)
        setAtClientPreferences,
  }) {
    return setAtClientPreferences(atClientPreference);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
  }) {
    return setAtClientPreferences?.call(atClientPreference);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function()? onBoardAtSign,
    TResult Function(String atSign)? initAtPreferences,
    TResult Function(AtClientPreference atClientPreference)?
        setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (setAtClientPreferences != null) {
      return setAtClientPreferences(atClientPreference);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_onBoardAtSign value) onBoardAtSign,
    required TResult Function(_initAtPreferences value) initAtPreferences,
    required TResult Function(_setAtClientPreferences value)
        setAtClientPreferences,
  }) {
    return setAtClientPreferences(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
  }) {
    return setAtClientPreferences?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_onBoardAtSign value)? onBoardAtSign,
    TResult Function(_initAtPreferences value)? initAtPreferences,
    TResult Function(_setAtClientPreferences value)? setAtClientPreferences,
    required TResult orElse(),
  }) {
    if (setAtClientPreferences != null) {
      return setAtClientPreferences(this);
    }
    return orElse();
  }
}

abstract class _setAtClientPreferences implements SignInEvent {
  const factory _setAtClientPreferences(
      final AtClientPreference atClientPreference) = _$_setAtClientPreferences;

  AtClientPreference get atClientPreference;
  @JsonKey(ignore: true)
  _$$_setAtClientPreferencesCopyWith<_$_setAtClientPreferences> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$SignInState {
  bool get isValidAtsign => throw _privateConstructorUsedError;
  bool get checkedAtSign => throw _privateConstructorUsedError;
  bool get isLoading => throw _privateConstructorUsedError;
  bool get uploading => throw _privateConstructorUsedError; //
  bool get authenticated => throw _privateConstructorUsedError;
  AtClientPreference get atClientPreference =>
      throw _privateConstructorUsedError;
  bool? get isSuperAdmin => throw _privateConstructorUsedError;
  String? get currentAtSign => throw _privateConstructorUsedError;
  bool get isAdmin => throw _privateConstructorUsedError;
  Option<bool> get onboarded => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  Option<AtPlatformFailure> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SignInStateCopyWith<SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignInStateCopyWith<$Res> {
  factory $SignInStateCopyWith(
          SignInState value, $Res Function(SignInState) then) =
      _$SignInStateCopyWithImpl<$Res>;
  $Res call(
      {bool isValidAtsign,
      bool checkedAtSign,
      bool isLoading,
      bool uploading,
      bool authenticated,
      AtClientPreference atClientPreference,
      bool? isSuperAdmin,
      String? currentAtSign,
      bool isAdmin,
      Option<bool> onboarded,
      bool showErrorMessages,
      Option<AtPlatformFailure> saveFailureOrSuccessOption});
}

/// @nodoc
class _$SignInStateCopyWithImpl<$Res> implements $SignInStateCopyWith<$Res> {
  _$SignInStateCopyWithImpl(this._value, this._then);

  final SignInState _value;
  // ignore: unused_field
  final $Res Function(SignInState) _then;

  @override
  $Res call({
    Object? isValidAtsign = freezed,
    Object? checkedAtSign = freezed,
    Object? isLoading = freezed,
    Object? uploading = freezed,
    Object? authenticated = freezed,
    Object? atClientPreference = freezed,
    Object? isSuperAdmin = freezed,
    Object? currentAtSign = freezed,
    Object? isAdmin = freezed,
    Object? onboarded = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      isValidAtsign: isValidAtsign == freezed
          ? _value.isValidAtsign
          : isValidAtsign // ignore: cast_nullable_to_non_nullable
              as bool,
      checkedAtSign: checkedAtSign == freezed
          ? _value.checkedAtSign
          : checkedAtSign // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploading: uploading == freezed
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      atClientPreference: atClientPreference == freezed
          ? _value.atClientPreference
          : atClientPreference // ignore: cast_nullable_to_non_nullable
              as AtClientPreference,
      isSuperAdmin: isSuperAdmin == freezed
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentAtSign: currentAtSign == freezed
          ? _value.currentAtSign
          : currentAtSign // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      onboarded: onboarded == freezed
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<AtPlatformFailure>,
    ));
  }
}

/// @nodoc
abstract class _$$_SignInStateCopyWith<$Res>
    implements $SignInStateCopyWith<$Res> {
  factory _$$_SignInStateCopyWith(
          _$_SignInState value, $Res Function(_$_SignInState) then) =
      __$$_SignInStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {bool isValidAtsign,
      bool checkedAtSign,
      bool isLoading,
      bool uploading,
      bool authenticated,
      AtClientPreference atClientPreference,
      bool? isSuperAdmin,
      String? currentAtSign,
      bool isAdmin,
      Option<bool> onboarded,
      bool showErrorMessages,
      Option<AtPlatformFailure> saveFailureOrSuccessOption});
}

/// @nodoc
class __$$_SignInStateCopyWithImpl<$Res> extends _$SignInStateCopyWithImpl<$Res>
    implements _$$_SignInStateCopyWith<$Res> {
  __$$_SignInStateCopyWithImpl(
      _$_SignInState _value, $Res Function(_$_SignInState) _then)
      : super(_value, (v) => _then(v as _$_SignInState));

  @override
  _$_SignInState get _value => super._value as _$_SignInState;

  @override
  $Res call({
    Object? isValidAtsign = freezed,
    Object? checkedAtSign = freezed,
    Object? isLoading = freezed,
    Object? uploading = freezed,
    Object? authenticated = freezed,
    Object? atClientPreference = freezed,
    Object? isSuperAdmin = freezed,
    Object? currentAtSign = freezed,
    Object? isAdmin = freezed,
    Object? onboarded = freezed,
    Object? showErrorMessages = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_SignInState(
      isValidAtsign: isValidAtsign == freezed
          ? _value.isValidAtsign
          : isValidAtsign // ignore: cast_nullable_to_non_nullable
              as bool,
      checkedAtSign: checkedAtSign == freezed
          ? _value.checkedAtSign
          : checkedAtSign // ignore: cast_nullable_to_non_nullable
              as bool,
      isLoading: isLoading == freezed
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      uploading: uploading == freezed
          ? _value.uploading
          : uploading // ignore: cast_nullable_to_non_nullable
              as bool,
      authenticated: authenticated == freezed
          ? _value.authenticated
          : authenticated // ignore: cast_nullable_to_non_nullable
              as bool,
      atClientPreference: atClientPreference == freezed
          ? _value.atClientPreference
          : atClientPreference // ignore: cast_nullable_to_non_nullable
              as AtClientPreference,
      isSuperAdmin: isSuperAdmin == freezed
          ? _value.isSuperAdmin
          : isSuperAdmin // ignore: cast_nullable_to_non_nullable
              as bool?,
      currentAtSign: currentAtSign == freezed
          ? _value.currentAtSign
          : currentAtSign // ignore: cast_nullable_to_non_nullable
              as String?,
      isAdmin: isAdmin == freezed
          ? _value.isAdmin
          : isAdmin // ignore: cast_nullable_to_non_nullable
              as bool,
      onboarded: onboarded == freezed
          ? _value.onboarded
          : onboarded // ignore: cast_nullable_to_non_nullable
              as Option<bool>,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<AtPlatformFailure>,
    ));
  }
}

/// @nodoc

class _$_SignInState implements _SignInState {
  const _$_SignInState(
      {required this.isValidAtsign,
      required this.checkedAtSign,
      required this.isLoading,
      required this.uploading,
      required this.authenticated,
      required this.atClientPreference,
      this.isSuperAdmin,
      this.currentAtSign,
      required this.isAdmin,
      required this.onboarded,
      required this.showErrorMessages,
      required this.saveFailureOrSuccessOption});

  @override
  final bool isValidAtsign;
  @override
  final bool checkedAtSign;
  @override
  final bool isLoading;
  @override
  final bool uploading;
//
  @override
  final bool authenticated;
  @override
  final AtClientPreference atClientPreference;
  @override
  final bool? isSuperAdmin;
  @override
  final String? currentAtSign;
  @override
  final bool isAdmin;
  @override
  final Option<bool> onboarded;
  @override
  final bool showErrorMessages;
  @override
  final Option<AtPlatformFailure> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'SignInState(isValidAtsign: $isValidAtsign, checkedAtSign: $checkedAtSign, isLoading: $isLoading, uploading: $uploading, authenticated: $authenticated, atClientPreference: $atClientPreference, isSuperAdmin: $isSuperAdmin, currentAtSign: $currentAtSign, isAdmin: $isAdmin, onboarded: $onboarded, showErrorMessages: $showErrorMessages, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SignInState &&
            const DeepCollectionEquality()
                .equals(other.isValidAtsign, isValidAtsign) &&
            const DeepCollectionEquality()
                .equals(other.checkedAtSign, checkedAtSign) &&
            const DeepCollectionEquality().equals(other.isLoading, isLoading) &&
            const DeepCollectionEquality().equals(other.uploading, uploading) &&
            const DeepCollectionEquality()
                .equals(other.authenticated, authenticated) &&
            const DeepCollectionEquality()
                .equals(other.atClientPreference, atClientPreference) &&
            const DeepCollectionEquality()
                .equals(other.isSuperAdmin, isSuperAdmin) &&
            const DeepCollectionEquality()
                .equals(other.currentAtSign, currentAtSign) &&
            const DeepCollectionEquality().equals(other.isAdmin, isAdmin) &&
            const DeepCollectionEquality().equals(other.onboarded, onboarded) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(isValidAtsign),
      const DeepCollectionEquality().hash(checkedAtSign),
      const DeepCollectionEquality().hash(isLoading),
      const DeepCollectionEquality().hash(uploading),
      const DeepCollectionEquality().hash(authenticated),
      const DeepCollectionEquality().hash(atClientPreference),
      const DeepCollectionEquality().hash(isSuperAdmin),
      const DeepCollectionEquality().hash(currentAtSign),
      const DeepCollectionEquality().hash(isAdmin),
      const DeepCollectionEquality().hash(onboarded),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      __$$_SignInStateCopyWithImpl<_$_SignInState>(this, _$identity);
}

abstract class _SignInState implements SignInState {
  const factory _SignInState(
      {required final bool isValidAtsign,
      required final bool checkedAtSign,
      required final bool isLoading,
      required final bool uploading,
      required final bool authenticated,
      required final AtClientPreference atClientPreference,
      final bool? isSuperAdmin,
      final String? currentAtSign,
      required final bool isAdmin,
      required final Option<bool> onboarded,
      required final bool showErrorMessages,
      required final Option<AtPlatformFailure>
          saveFailureOrSuccessOption}) = _$_SignInState;

  @override
  bool get isValidAtsign;
  @override
  bool get checkedAtSign;
  @override
  bool get isLoading;
  @override
  bool get uploading;
  @override //
  bool get authenticated;
  @override
  AtClientPreference get atClientPreference;
  @override
  bool? get isSuperAdmin;
  @override
  String? get currentAtSign;
  @override
  bool get isAdmin;
  @override
  Option<bool> get onboarded;
  @override
  bool get showErrorMessages;
  @override
  Option<AtPlatformFailure> get saveFailureOrSuccessOption;
  @override
  @JsonKey(ignore: true)
  _$$_SignInStateCopyWith<_$_SignInState> get copyWith =>
      throw _privateConstructorUsedError;
}
