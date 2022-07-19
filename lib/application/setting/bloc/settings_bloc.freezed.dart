// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'settings_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$SettingsEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<UserNameModel> initialUserNameOption)
        initialized,
    required TResult Function(String username) userNameChanged,
    required TResult Function() saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_initialized value) initialized,
    required TResult Function(_userNameChanged value) userNameChanged,
    required TResult Function(_saved value) saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsEventCopyWith<$Res> {
  factory $SettingsEventCopyWith(
          SettingsEvent value, $Res Function(SettingsEvent) then) =
      _$SettingsEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$SettingsEventCopyWithImpl<$Res>
    implements $SettingsEventCopyWith<$Res> {
  _$SettingsEventCopyWithImpl(this._value, this._then);

  final SettingsEvent _value;
  // ignore: unused_field
  final $Res Function(SettingsEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
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
    return 'SettingsEvent.started()';
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
    required TResult Function(Option<UserNameModel> initialUserNameOption)
        initialized,
    required TResult Function(String username) userNameChanged,
    required TResult Function() saved,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
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
    required TResult Function(_initialized value) initialized,
    required TResult Function(_userNameChanged value) userNameChanged,
    required TResult Function(_saved value) saved,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements SettingsEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_initializedCopyWith<$Res> {
  factory _$$_initializedCopyWith(
          _$_initialized value, $Res Function(_$_initialized) then) =
      __$$_initializedCopyWithImpl<$Res>;
  $Res call({Option<UserNameModel> initialUserNameOption});
}

/// @nodoc
class __$$_initializedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_initializedCopyWith<$Res> {
  __$$_initializedCopyWithImpl(
      _$_initialized _value, $Res Function(_$_initialized) _then)
      : super(_value, (v) => _then(v as _$_initialized));

  @override
  _$_initialized get _value => super._value as _$_initialized;

  @override
  $Res call({
    Object? initialUserNameOption = freezed,
  }) {
    return _then(_$_initialized(
      initialUserNameOption == freezed
          ? _value.initialUserNameOption
          : initialUserNameOption // ignore: cast_nullable_to_non_nullable
              as Option<UserNameModel>,
    ));
  }
}

/// @nodoc

class _$_initialized implements _initialized {
  const _$_initialized(this.initialUserNameOption);

  @override
  final Option<UserNameModel> initialUserNameOption;

  @override
  String toString() {
    return 'SettingsEvent.initialized(initialUserNameOption: $initialUserNameOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_initialized &&
            const DeepCollectionEquality()
                .equals(other.initialUserNameOption, initialUserNameOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(initialUserNameOption));

  @JsonKey(ignore: true)
  @override
  _$$_initializedCopyWith<_$_initialized> get copyWith =>
      __$$_initializedCopyWithImpl<_$_initialized>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<UserNameModel> initialUserNameOption)
        initialized,
    required TResult Function(String username) userNameChanged,
    required TResult Function() saved,
  }) {
    return initialized(initialUserNameOption);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
  }) {
    return initialized?.call(initialUserNameOption);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(initialUserNameOption);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_initialized value) initialized,
    required TResult Function(_userNameChanged value) userNameChanged,
    required TResult Function(_saved value) saved,
  }) {
    return initialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
  }) {
    return initialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
    required TResult orElse(),
  }) {
    if (initialized != null) {
      return initialized(this);
    }
    return orElse();
  }
}

abstract class _initialized implements SettingsEvent {
  const factory _initialized(
      final Option<UserNameModel> initialUserNameOption) = _$_initialized;

  Option<UserNameModel> get initialUserNameOption =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_initializedCopyWith<_$_initialized> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_userNameChangedCopyWith<$Res> {
  factory _$$_userNameChangedCopyWith(
          _$_userNameChanged value, $Res Function(_$_userNameChanged) then) =
      __$$_userNameChangedCopyWithImpl<$Res>;
  $Res call({String username});
}

/// @nodoc
class __$$_userNameChangedCopyWithImpl<$Res>
    extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_userNameChangedCopyWith<$Res> {
  __$$_userNameChangedCopyWithImpl(
      _$_userNameChanged _value, $Res Function(_$_userNameChanged) _then)
      : super(_value, (v) => _then(v as _$_userNameChanged));

  @override
  _$_userNameChanged get _value => super._value as _$_userNameChanged;

  @override
  $Res call({
    Object? username = freezed,
  }) {
    return _then(_$_userNameChanged(
      username == freezed
          ? _value.username
          : username // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$_userNameChanged implements _userNameChanged {
  const _$_userNameChanged(this.username);

  @override
  final String username;

  @override
  String toString() {
    return 'SettingsEvent.userNameChanged(username: $username)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_userNameChanged &&
            const DeepCollectionEquality().equals(other.username, username));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(username));

  @JsonKey(ignore: true)
  @override
  _$$_userNameChangedCopyWith<_$_userNameChanged> get copyWith =>
      __$$_userNameChangedCopyWithImpl<_$_userNameChanged>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<UserNameModel> initialUserNameOption)
        initialized,
    required TResult Function(String username) userNameChanged,
    required TResult Function() saved,
  }) {
    return userNameChanged(username);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
  }) {
    return userNameChanged?.call(username);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(username);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_initialized value) initialized,
    required TResult Function(_userNameChanged value) userNameChanged,
    required TResult Function(_saved value) saved,
  }) {
    return userNameChanged(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
  }) {
    return userNameChanged?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
    required TResult orElse(),
  }) {
    if (userNameChanged != null) {
      return userNameChanged(this);
    }
    return orElse();
  }
}

abstract class _userNameChanged implements SettingsEvent {
  const factory _userNameChanged(final String username) = _$_userNameChanged;

  String get username => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_userNameChangedCopyWith<_$_userNameChanged> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$_savedCopyWith<$Res> {
  factory _$$_savedCopyWith(_$_saved value, $Res Function(_$_saved) then) =
      __$$_savedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_savedCopyWithImpl<$Res> extends _$SettingsEventCopyWithImpl<$Res>
    implements _$$_savedCopyWith<$Res> {
  __$$_savedCopyWithImpl(_$_saved _value, $Res Function(_$_saved) _then)
      : super(_value, (v) => _then(v as _$_saved));

  @override
  _$_saved get _value => super._value as _$_saved;
}

/// @nodoc

class _$_saved implements _saved {
  const _$_saved();

  @override
  String toString() {
    return 'SettingsEvent.saved()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_saved);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(Option<UserNameModel> initialUserNameOption)
        initialized,
    required TResult Function(String username) userNameChanged,
    required TResult Function() saved,
  }) {
    return saved();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
  }) {
    return saved?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(Option<UserNameModel> initialUserNameOption)? initialized,
    TResult Function(String username)? userNameChanged,
    TResult Function()? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_initialized value) initialized,
    required TResult Function(_userNameChanged value) userNameChanged,
    required TResult Function(_saved value) saved,
  }) {
    return saved(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
  }) {
    return saved?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_initialized value)? initialized,
    TResult Function(_userNameChanged value)? userNameChanged,
    TResult Function(_saved value)? saved,
    required TResult orElse(),
  }) {
    if (saved != null) {
      return saved(this);
    }
    return orElse();
  }
}

abstract class _saved implements SettingsEvent {
  const factory _saved() = _$_saved;
}

/// @nodoc
mixin _$SettingsState {
  UserNameModel get userNameModel => throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isEditing => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  Option<AtPlatformFailure> get getFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $SettingsStateCopyWith<SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SettingsStateCopyWith<$Res> {
  factory $SettingsStateCopyWith(
          SettingsState value, $Res Function(SettingsState) then) =
      _$SettingsStateCopyWithImpl<$Res>;
  $Res call(
      {UserNameModel userNameModel,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption,
      Option<AtPlatformFailure> getFailureOrSuccessOption});

  $UserNameModelCopyWith<$Res> get userNameModel;
}

/// @nodoc
class _$SettingsStateCopyWithImpl<$Res>
    implements $SettingsStateCopyWith<$Res> {
  _$SettingsStateCopyWithImpl(this._value, this._then);

  final SettingsState _value;
  // ignore: unused_field
  final $Res Function(SettingsState) _then;

  @override
  $Res call({
    Object? userNameModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? getFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      userNameModel: userNameModel == freezed
          ? _value.userNameModel
          : userNameModel // ignore: cast_nullable_to_non_nullable
              as UserNameModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
      getFailureOrSuccessOption: getFailureOrSuccessOption == freezed
          ? _value.getFailureOrSuccessOption
          : getFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<AtPlatformFailure>,
    ));
  }

  @override
  $UserNameModelCopyWith<$Res> get userNameModel {
    return $UserNameModelCopyWith<$Res>(_value.userNameModel, (value) {
      return _then(_value.copyWith(userNameModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_SettingsStateCopyWith<$Res>
    implements $SettingsStateCopyWith<$Res> {
  factory _$$_SettingsStateCopyWith(
          _$_SettingsState value, $Res Function(_$_SettingsState) then) =
      __$$_SettingsStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {UserNameModel userNameModel,
      bool showErrorMessages,
      bool isEditing,
      bool isSaving,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption,
      Option<AtPlatformFailure> getFailureOrSuccessOption});

  @override
  $UserNameModelCopyWith<$Res> get userNameModel;
}

/// @nodoc
class __$$_SettingsStateCopyWithImpl<$Res>
    extends _$SettingsStateCopyWithImpl<$Res>
    implements _$$_SettingsStateCopyWith<$Res> {
  __$$_SettingsStateCopyWithImpl(
      _$_SettingsState _value, $Res Function(_$_SettingsState) _then)
      : super(_value, (v) => _then(v as _$_SettingsState));

  @override
  _$_SettingsState get _value => super._value as _$_SettingsState;

  @override
  $Res call({
    Object? userNameModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isEditing = freezed,
    Object? isSaving = freezed,
    Object? saveFailureOrSuccessOption = freezed,
    Object? getFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_SettingsState(
      userNameModel: userNameModel == freezed
          ? _value.userNameModel
          : userNameModel // ignore: cast_nullable_to_non_nullable
              as UserNameModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isEditing: isEditing == freezed
          ? _value.isEditing
          : isEditing // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
      getFailureOrSuccessOption: getFailureOrSuccessOption == freezed
          ? _value.getFailureOrSuccessOption
          : getFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<AtPlatformFailure>,
    ));
  }
}

/// @nodoc

class _$_SettingsState implements _SettingsState {
  const _$_SettingsState(
      {required this.userNameModel,
      required this.showErrorMessages,
      required this.isEditing,
      required this.isSaving,
      required this.saveFailureOrSuccessOption,
      required this.getFailureOrSuccessOption});

  @override
  final UserNameModel userNameModel;
  @override
  final bool showErrorMessages;
  @override
  final bool isEditing;
  @override
  final bool isSaving;
  @override
  final Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption;
  @override
  final Option<AtPlatformFailure> getFailureOrSuccessOption;

  @override
  String toString() {
    return 'SettingsState(userNameModel: $userNameModel, showErrorMessages: $showErrorMessages, isEditing: $isEditing, isSaving: $isSaving, saveFailureOrSuccessOption: $saveFailureOrSuccessOption, getFailureOrSuccessOption: $getFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_SettingsState &&
            const DeepCollectionEquality()
                .equals(other.userNameModel, userNameModel) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isEditing, isEditing) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption) &&
            const DeepCollectionEquality().equals(
                other.getFailureOrSuccessOption, getFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(userNameModel),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isEditing),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption),
      const DeepCollectionEquality().hash(getFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      __$$_SettingsStateCopyWithImpl<_$_SettingsState>(this, _$identity);
}

abstract class _SettingsState implements SettingsState {
  const factory _SettingsState(
          {required final UserNameModel userNameModel,
          required final bool showErrorMessages,
          required final bool isEditing,
          required final bool isSaving,
          required final Option<Either<AtPlatformFailure, Unit>>
              saveFailureOrSuccessOption,
          required final Option<AtPlatformFailure> getFailureOrSuccessOption}) =
      _$_SettingsState;

  @override
  UserNameModel get userNameModel => throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isEditing => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  Option<AtPlatformFailure> get getFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_SettingsStateCopyWith<_$_SettingsState> get copyWith =>
      throw _privateConstructorUsedError;
}
