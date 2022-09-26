// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'mentrual_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MenstrualDto _$MenstrualDtoFromJson(Map<String, dynamic> json) {
  return _MenstrualDto.fromJson(json);
}

/// @nodoc
mixin _$MenstrualDto {
  int get periodCycleDays => throw _privateConstructorUsedError;
  int get bleedingDays => throw _privateConstructorUsedError;
  DateTime? get fertilephaseStart => throw _privateConstructorUsedError;
  DateTime? get fertilephaseEnd => throw _privateConstructorUsedError;
  DateTime? get ovulation => throw _privateConstructorUsedError;
  DateTime get periodStartDate => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MenstrualDtoCopyWith<MenstrualDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MenstrualDtoCopyWith<$Res> {
  factory $MenstrualDtoCopyWith(
          MenstrualDto value, $Res Function(MenstrualDto) then) =
      _$MenstrualDtoCopyWithImpl<$Res>;
  $Res call(
      {int periodCycleDays,
      int bleedingDays,
      DateTime? fertilephaseStart,
      DateTime? fertilephaseEnd,
      DateTime? ovulation,
      DateTime periodStartDate});
}

/// @nodoc
class _$MenstrualDtoCopyWithImpl<$Res> implements $MenstrualDtoCopyWith<$Res> {
  _$MenstrualDtoCopyWithImpl(this._value, this._then);

  final MenstrualDto _value;
  // ignore: unused_field
  final $Res Function(MenstrualDto) _then;

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
              as DateTime,
    ));
  }
}

/// @nodoc
abstract class _$$_MenstrualDtoCopyWith<$Res>
    implements $MenstrualDtoCopyWith<$Res> {
  factory _$$_MenstrualDtoCopyWith(
          _$_MenstrualDto value, $Res Function(_$_MenstrualDto) then) =
      __$$_MenstrualDtoCopyWithImpl<$Res>;
  @override
  $Res call(
      {int periodCycleDays,
      int bleedingDays,
      DateTime? fertilephaseStart,
      DateTime? fertilephaseEnd,
      DateTime? ovulation,
      DateTime periodStartDate});
}

/// @nodoc
class __$$_MenstrualDtoCopyWithImpl<$Res>
    extends _$MenstrualDtoCopyWithImpl<$Res>
    implements _$$_MenstrualDtoCopyWith<$Res> {
  __$$_MenstrualDtoCopyWithImpl(
      _$_MenstrualDto _value, $Res Function(_$_MenstrualDto) _then)
      : super(_value, (v) => _then(v as _$_MenstrualDto));

  @override
  _$_MenstrualDto get _value => super._value as _$_MenstrualDto;

  @override
  $Res call({
    Object? periodCycleDays = freezed,
    Object? bleedingDays = freezed,
    Object? fertilephaseStart = freezed,
    Object? fertilephaseEnd = freezed,
    Object? ovulation = freezed,
    Object? periodStartDate = freezed,
  }) {
    return _then(_$_MenstrualDto(
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
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_MenstrualDto extends _MenstrualDto {
  _$_MenstrualDto(
      {this.periodCycleDays = 28,
      this.bleedingDays = 3,
      this.fertilephaseStart,
      this.fertilephaseEnd,
      this.ovulation,
      required this.periodStartDate})
      : super._();

  factory _$_MenstrualDto.fromJson(Map<String, dynamic> json) =>
      _$$_MenstrualDtoFromJson(json);

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
  final DateTime periodStartDate;

  @override
  String toString() {
    return 'MenstrualDto(periodCycleDays: $periodCycleDays, bleedingDays: $bleedingDays, fertilephaseStart: $fertilephaseStart, fertilephaseEnd: $fertilephaseEnd, ovulation: $ovulation, periodStartDate: $periodStartDate)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_MenstrualDto &&
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

  @JsonKey(ignore: true)
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
  _$$_MenstrualDtoCopyWith<_$_MenstrualDto> get copyWith =>
      __$$_MenstrualDtoCopyWithImpl<_$_MenstrualDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_MenstrualDtoToJson(
      this,
    );
  }
}

abstract class _MenstrualDto extends MenstrualDto {
  factory _MenstrualDto(
      {final int periodCycleDays,
      final int bleedingDays,
      final DateTime? fertilephaseStart,
      final DateTime? fertilephaseEnd,
      final DateTime? ovulation,
      required final DateTime periodStartDate}) = _$_MenstrualDto;
  _MenstrualDto._() : super._();

  factory _MenstrualDto.fromJson(Map<String, dynamic> json) =
      _$_MenstrualDto.fromJson;

  @override
  int get periodCycleDays;
  @override
  int get bleedingDays;
  @override
  DateTime? get fertilephaseStart;
  @override
  DateTime? get fertilephaseEnd;
  @override
  DateTime? get ovulation;
  @override
  DateTime get periodStartDate;
  @override
  @JsonKey(ignore: true)
  _$$_MenstrualDtoCopyWith<_$_MenstrualDto> get copyWith =>
      throw _privateConstructorUsedError;
}
