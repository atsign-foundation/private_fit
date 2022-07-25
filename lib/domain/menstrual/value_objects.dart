import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/core/value_objects.dart';
import 'package:private_fit/domain/core/value_validators.dart';

class PeriodStartDate extends ValueObject<DateTime> {
  factory PeriodStartDate(DateTime input) {
    return PeriodStartDate._(
      validateDateIsNotGreater(input, comparisonValue),
    );
  }

  const PeriodStartDate._(this.value);
  @override
  final Either<ValueFailure<DateTime>, DateTime> value;

  static DateTime comparisonValue = DateTime.now().add(const Duration(days: 1));
}
