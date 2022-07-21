// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menstrual_bloc.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenstrualEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MenstrualDataModel menstrualDataModel) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_save value) save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstrualEventCopyWith<$Res> {
  factory $MenstrualEventCopyWith(
          MenstrualEvent value, $Res Function(MenstrualEvent) then) =
      _$MenstrualEventCopyWithImpl<$Res>;
}

/// @nodoc
class _$MenstrualEventCopyWithImpl<$Res>
    implements $MenstrualEventCopyWith<$Res> {
  _$MenstrualEventCopyWithImpl(this._value, this._then);

  final MenstrualEvent _value;
  // ignore: unused_field
  final $Res Function(MenstrualEvent) _then;
}

/// @nodoc
abstract class _$$_StartedCopyWith<$Res> {
  factory _$$_StartedCopyWith(
          _$_Started value, $Res Function(_$_Started) then) =
      __$$_StartedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_StartedCopyWithImpl<$Res> extends _$MenstrualEventCopyWithImpl<$Res>
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
    return 'MenstrualEvent.started()';
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
    required TResult Function(MenstrualDataModel menstrualDataModel) save,
  }) {
    return started();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
  }) {
    return started?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
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
    required TResult Function(_save value) save,
  }) {
    return started(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) {
    return started?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) {
    if (started != null) {
      return started(this);
    }
    return orElse();
  }
}

abstract class _Started implements MenstrualEvent {
  const factory _Started() = _$_Started;
}

/// @nodoc
abstract class _$$_saveCopyWith<$Res> {
  factory _$$_saveCopyWith(_$_save value, $Res Function(_$_save) then) =
      __$$_saveCopyWithImpl<$Res>;
  $Res call({MenstrualDataModel menstrualDataModel});

  $MenstrualDataModelCopyWith<$Res> get menstrualDataModel;
}

/// @nodoc
class __$$_saveCopyWithImpl<$Res> extends _$MenstrualEventCopyWithImpl<$Res>
    implements _$$_saveCopyWith<$Res> {
  __$$_saveCopyWithImpl(_$_save _value, $Res Function(_$_save) _then)
      : super(_value, (v) => _then(v as _$_save));

  @override
  _$_save get _value => super._value as _$_save;

  @override
  $Res call({
    Object? menstrualDataModel = freezed,
  }) {
    return _then(_$_save(
      menstrualDataModel == freezed
          ? _value.menstrualDataModel
          : menstrualDataModel // ignore: cast_nullable_to_non_nullable
              as MenstrualDataModel,
    ));
  }

  @override
  $MenstrualDataModelCopyWith<$Res> get menstrualDataModel {
    return $MenstrualDataModelCopyWith<$Res>(_value.menstrualDataModel,
        (value) {
      return _then(_value.copyWith(menstrualDataModel: value));
    });
  }
}

/// @nodoc

class _$_save implements _save {
  const _$_save(this.menstrualDataModel);

  @override
  final MenstrualDataModel menstrualDataModel;

  @override
  String toString() {
    return 'MenstrualEvent.save(menstrualDataModel: $menstrualDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_save &&
            const DeepCollectionEquality()
                .equals(other.menstrualDataModel, menstrualDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, const DeepCollectionEquality().hash(menstrualDataModel));

  @JsonKey(ignore: true)
  @override
  _$$_saveCopyWith<_$_save> get copyWith =>
      __$$_saveCopyWithImpl<_$_save>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() started,
    required TResult Function(MenstrualDataModel menstrualDataModel) save,
  }) {
    return save(menstrualDataModel);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
  }) {
    return save?.call(menstrualDataModel);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? started,
    TResult Function(MenstrualDataModel menstrualDataModel)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(menstrualDataModel);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Started value) started,
    required TResult Function(_save value) save,
  }) {
    return save(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
  }) {
    return save?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Started value)? started,
    TResult Function(_save value)? save,
    required TResult orElse(),
  }) {
    if (save != null) {
      return save(this);
    }
    return orElse();
  }
}

abstract class _save implements MenstrualEvent {
  const factory _save(final MenstrualDataModel menstrualDataModel) = _$_save;

  MenstrualDataModel get menstrualDataModel =>
      throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  _$$_saveCopyWith<_$_save> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$MenstrualState {
  MenstrualDataModel get menstrualDataModel =>
      throw _privateConstructorUsedError;
  bool get showErrorMessages => throw _privateConstructorUsedError;
  bool get isSaving => throw _privateConstructorUsedError;
  bool get liveData => throw _privateConstructorUsedError;
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenstrualStateCopyWith<MenstrualState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstrualStateCopyWith<$Res> {
  factory $MenstrualStateCopyWith(
          MenstrualState value, $Res Function(MenstrualState) then) =
      _$MenstrualStateCopyWithImpl<$Res>;
  $Res call(
      {MenstrualDataModel menstrualDataModel,
      bool showErrorMessages,
      bool isSaving,
      bool liveData,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption});

  $MenstrualDataModelCopyWith<$Res> get menstrualDataModel;
}

/// @nodoc
class _$MenstrualStateCopyWithImpl<$Res>
    implements $MenstrualStateCopyWith<$Res> {
  _$MenstrualStateCopyWithImpl(this._value, this._then);

  final MenstrualState _value;
  // ignore: unused_field
  final $Res Function(MenstrualState) _then;

  @override
  $Res call({
    Object? menstrualDataModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? liveData = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_value.copyWith(
      menstrualDataModel: menstrualDataModel == freezed
          ? _value.menstrualDataModel
          : menstrualDataModel // ignore: cast_nullable_to_non_nullable
              as MenstrualDataModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
    ));
  }

  @override
  $MenstrualDataModelCopyWith<$Res> get menstrualDataModel {
    return $MenstrualDataModelCopyWith<$Res>(_value.menstrualDataModel,
        (value) {
      return _then(_value.copyWith(menstrualDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$$_MenstrualStateCopyWith<$Res>
    implements $MenstrualStateCopyWith<$Res> {
  factory _$$_MenstrualStateCopyWith(
          _$_MenstrualState value, $Res Function(_$_MenstrualState) then) =
      __$$_MenstrualStateCopyWithImpl<$Res>;
  @override
  $Res call(
      {MenstrualDataModel menstrualDataModel,
      bool showErrorMessages,
      bool isSaving,
      bool liveData,
      Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption});

  @override
  $MenstrualDataModelCopyWith<$Res> get menstrualDataModel;
}

/// @nodoc
class __$$_MenstrualStateCopyWithImpl<$Res>
    extends _$MenstrualStateCopyWithImpl<$Res>
    implements _$$_MenstrualStateCopyWith<$Res> {
  __$$_MenstrualStateCopyWithImpl(
      _$_MenstrualState _value, $Res Function(_$_MenstrualState) _then)
      : super(_value, (v) => _then(v as _$_MenstrualState));

  @override
  _$_MenstrualState get _value => super._value as _$_MenstrualState;

  @override
  $Res call({
    Object? menstrualDataModel = freezed,
    Object? showErrorMessages = freezed,
    Object? isSaving = freezed,
    Object? liveData = freezed,
    Object? saveFailureOrSuccessOption = freezed,
  }) {
    return _then(_$_MenstrualState(
      menstrualDataModel: menstrualDataModel == freezed
          ? _value.menstrualDataModel
          : menstrualDataModel // ignore: cast_nullable_to_non_nullable
              as MenstrualDataModel,
      showErrorMessages: showErrorMessages == freezed
          ? _value.showErrorMessages
          : showErrorMessages // ignore: cast_nullable_to_non_nullable
              as bool,
      isSaving: isSaving == freezed
          ? _value.isSaving
          : isSaving // ignore: cast_nullable_to_non_nullable
              as bool,
      liveData: liveData == freezed
          ? _value.liveData
          : liveData // ignore: cast_nullable_to_non_nullable
              as bool,
      saveFailureOrSuccessOption: saveFailureOrSuccessOption == freezed
          ? _value.saveFailureOrSuccessOption
          : saveFailureOrSuccessOption // ignore: cast_nullable_to_non_nullable
              as Option<Either<AtPlatformFailure, Unit>>,
    ));
  }
}

/// @nodoc

class _$_MenstrualState implements _MenstrualState {
  const _$_MenstrualState(
      {required this.menstrualDataModel,
      required this.showErrorMessages,
      required this.isSaving,
      required this.liveData,
      required this.saveFailureOrSuccessOption});

  @override
  final MenstrualDataModel menstrualDataModel;
  @override
  final bool showErrorMessages;
  @override
  final bool isSaving;
  @override
  final bool liveData;
  @override
  final Option<Either<AtPlatformFailure, Unit>> saveFailureOrSuccessOption;

  @override
  String toString() {
    return 'MenstrualState(menstrualDataModel: $menstrualDataModel, showErrorMessages: $showErrorMessages, isSaving: $isSaving, liveData: $liveData, saveFailureOrSuccessOption: $saveFailureOrSuccessOption)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenstrualState &&
            const DeepCollectionEquality()
                .equals(other.menstrualDataModel, menstrualDataModel) &&
            const DeepCollectionEquality()
                .equals(other.showErrorMessages, showErrorMessages) &&
            const DeepCollectionEquality().equals(other.isSaving, isSaving) &&
            const DeepCollectionEquality().equals(other.liveData, liveData) &&
            const DeepCollectionEquality().equals(
                other.saveFailureOrSuccessOption, saveFailureOrSuccessOption));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(menstrualDataModel),
      const DeepCollectionEquality().hash(showErrorMessages),
      const DeepCollectionEquality().hash(isSaving),
      const DeepCollectionEquality().hash(liveData),
      const DeepCollectionEquality().hash(saveFailureOrSuccessOption));

  @JsonKey(ignore: true)
  @override
  _$$_MenstrualStateCopyWith<_$_MenstrualState> get copyWith =>
      __$$_MenstrualStateCopyWithImpl<_$_MenstrualState>(this, _$identity);
}

abstract class _MenstrualState implements MenstrualState {
  const factory _MenstrualState(
      {required final MenstrualDataModel menstrualDataModel,
      required final bool showErrorMessages,
      required final bool isSaving,
      required final bool liveData,
      required final Option<Either<AtPlatformFailure, Unit>>
          saveFailureOrSuccessOption}) = _$_MenstrualState;

  @override
  MenstrualDataModel get menstrualDataModel =>
      throw _privateConstructorUsedError;
  @override
  bool get showErrorMessages => throw _privateConstructorUsedError;
  @override
  bool get isSaving => throw _privateConstructorUsedError;
  @override
  bool get liveData => throw _privateConstructorUsedError;
  @override
  Option<Either<AtPlatformFailure, Unit>> get saveFailureOrSuccessOption =>
      throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MenstrualStateCopyWith<_$_MenstrualState> get copyWith =>
      throw _privateConstructorUsedError;
}
