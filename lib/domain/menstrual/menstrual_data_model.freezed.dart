// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'menstrual_data_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$MenstrualDataModel {
  int get periodCycleDays => throw _privateConstructorUsedError;
  int get bleedingDays => throw _privateConstructorUsedError;
  DateTime? get fertilephaseStart => throw _privateConstructorUsedError;
  DateTime? get fertilephaseEnd => throw _privateConstructorUsedError;
  DateTime? get ovulation => throw _privateConstructorUsedError;
  PeriodStartDate get periodStartDate => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $MenstrualDataModelCopyWith<MenstrualDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstrualDataModelCopyWith<$Res> {
  factory $MenstrualDataModelCopyWith(
          MenstrualDataModel value, $Res Function(MenstrualDataModel) then) =
      _$MenstrualDataModelCopyWithImpl<$Res>;
  $Res call(
      {int periodCycleDays,
      int bleedingDays,
      DateTime? fertilephaseStart,
      DateTime? fertilephaseEnd,
      DateTime? ovulation,
      PeriodStartDate periodStartDate});
}

/// @nodoc
class _$MenstrualDataModelCopyWithImpl<$Res>
    implements $MenstrualDataModelCopyWith<$Res> {
  _$MenstrualDataModelCopyWithImpl(this._value, this._then);

  final MenstrualDataModel _value;
  // ignore: unused_field
  final $Res Function(MenstrualDataModel) _then;

  @override
  $Res call({
    Object? periodCycleDays = freezed,
    Object? bleedingDays = freezed,
    Object? fertilephaseStart = freezed,
    Object? fertilephaseEnd = freezed,
    Object? ovulation = freezed,
    Object? periodStartDate = freezed,
  }) {
    return _then(_value.copyWith(
      periodCycleDays: periodCycleDays == freezed
          ? _value.periodCycleDays
          : periodCycleDays // ignore: cast_nullable_to_non_nullable
              as int,
      bleedingDays: bleedingDays == freezed
          ? _value.bleedingDays
          : bleedingDays // ignore: cast_nullable_to_non_nullable
              as int,
      fertilephaseStart: fertilephaseStart == freezed
          ? _value.fertilephaseStart
          : fertilephaseStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fertilephaseEnd: fertilephaseEnd == freezed
          ? _value.fertilephaseEnd
          : fertilephaseEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ovulation: ovulation == freezed
          ? _value.ovulation
          : ovulation // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodStartDate: periodStartDate == freezed
          ? _value.periodStartDate
          : periodStartDate // ignore: cast_nullable_to_non_nullable
              as PeriodStartDate,
    ));
  }
}

/// @nodoc
abstract class _$$_MenstrualDataModelCopyWith<$Res>
    implements $MenstrualDataModelCopyWith<$Res> {
  factory _$$_MenstrualDataModelCopyWith(_$_MenstrualDataModel value,
          $Res Function(_$_MenstrualDataModel) then) =
      __$$_MenstrualDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int periodCycleDays,
      int bleedingDays,
      DateTime? fertilephaseStart,
      DateTime? fertilephaseEnd,
      DateTime? ovulation,
      PeriodStartDate periodStartDate});
}

/// @nodoc
class __$$_MenstrualDataModelCopyWithImpl<$Res>
    extends _$MenstrualDataModelCopyWithImpl<$Res>
    implements _$$_MenstrualDataModelCopyWith<$Res> {
  __$$_MenstrualDataModelCopyWithImpl(
      _$_MenstrualDataModel _value, $Res Function(_$_MenstrualDataModel) _then)
      : super(_value, (v) => _then(v as _$_MenstrualDataModel));

  @override
  _$_MenstrualDataModel get _value => super._value as _$_MenstrualDataModel;

  @override
  $Res call({
    Object? periodCycleDays = freezed,
    Object? bleedingDays = freezed,
    Object? fertilephaseStart = freezed,
    Object? fertilephaseEnd = freezed,
    Object? ovulation = freezed,
    Object? periodStartDate = freezed,
  }) {
    return _then(_$_MenstrualDataModel(
      periodCycleDays: periodCycleDays == freezed
          ? _value.periodCycleDays
          : periodCycleDays // ignore: cast_nullable_to_non_nullable
              as int,
      bleedingDays: bleedingDays == freezed
          ? _value.bleedingDays
          : bleedingDays // ignore: cast_nullable_to_non_nullable
              as int,
      fertilephaseStart: fertilephaseStart == freezed
          ? _value.fertilephaseStart
          : fertilephaseStart // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      fertilephaseEnd: fertilephaseEnd == freezed
          ? _value.fertilephaseEnd
          : fertilephaseEnd // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      ovulation: ovulation == freezed
          ? _value.ovulation
          : ovulation // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      periodStartDate: periodStartDate == freezed
          ? _value.periodStartDate
          : periodStartDate // ignore: cast_nullable_to_non_nullable
              as PeriodStartDate,
    ));
  }
}

/// @nodoc

class _$_MenstrualDataModel extends _MenstrualDataModel {
  _$_MenstrualDataModel(
      {this.periodCycleDays = 28,
      this.bleedingDays = 3,
      this.fertilephaseStart,
      this.fertilephaseEnd,
      this.ovulation,
      required this.periodStartDate})
      : super._();

  @override
  @JsonKey()
  final int periodCycleDays;
  @override
  @JsonKey()
  final int bleedingDays;
  @override
  final DateTime? fertilephaseStart;
  @override
  final DateTime? fertilephaseEnd;
  @override
  final DateTime? ovulation;
  @override
  final PeriodStartDate periodStartDate;

  @override
  String toString() {
    return 'MenstrualDataModel(periodCycleDays: $periodCycleDays, bleedingDays: $bleedingDays, fertilephaseStart: $fertilephaseStart, fertilephaseEnd: $fertilephaseEnd, ovulation: $ovulation, periodStartDate: $periodStartDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenstrualDataModel &&
            const DeepCollectionEquality()
                .equals(other.periodCycleDays, periodCycleDays) &&
            const DeepCollectionEquality()
                .equals(other.bleedingDays, bleedingDays) &&
            const DeepCollectionEquality()
                .equals(other.fertilephaseStart, fertilephaseStart) &&
            const DeepCollectionEquality()
                .equals(other.fertilephaseEnd, fertilephaseEnd) &&
            const DeepCollectionEquality().equals(other.ovulation, ovulation) &&
            const DeepCollectionEquality()
                .equals(other.periodStartDate, periodStartDate));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(periodCycleDays),
      const DeepCollectionEquality().hash(bleedingDays),
      const DeepCollectionEquality().hash(fertilephaseStart),
      const DeepCollectionEquality().hash(fertilephaseEnd),
      const DeepCollectionEquality().hash(ovulation),
      const DeepCollectionEquality().hash(periodStartDate));

  @JsonKey(ignore: true)
  @override
  _$$_MenstrualDataModelCopyWith<_$_MenstrualDataModel> get copyWith =>
      __$$_MenstrualDataModelCopyWithImpl<_$_MenstrualDataModel>(
          this, _$identity);
}

abstract class _MenstrualDataModel extends MenstrualDataModel {
  factory _MenstrualDataModel(
      {final int periodCycleDays,
      final int bleedingDays,
      final DateTime? fertilephaseStart,
      final DateTime? fertilephaseEnd,
      final DateTime? ovulation,
      required final PeriodStartDate periodStartDate}) = _$_MenstrualDataModel;
  _MenstrualDataModel._() : super._();

  @override
  int get periodCycleDays => throw _privateConstructorUsedError;
  @override
  int get bleedingDays => throw _privateConstructorUsedError;
  @override
  DateTime? get fertilephaseStart => throw _privateConstructorUsedError;
  @override
  DateTime? get fertilephaseEnd => throw _privateConstructorUsedError;
  @override
  DateTime? get ovulation => throw _privateConstructorUsedError;
  @override
  PeriodStartDate get periodStartDate => throw _privateConstructorUsedError;
  @override
  @JsonKey(ignore: true)
  _$$_MenstrualDataModelCopyWith<_$_MenstrualDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
