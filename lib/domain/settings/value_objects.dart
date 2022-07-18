import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/core/value_objects.dart';
import 'package:private_fit/domain/core/value_validators.dart';

class UserName extends ValueObject<String> {
  factory UserName(String input) {
    return UserName._(
      validateMaxStringLength(input, maxLength)
          .flatMap(validateStringNotEmpty)
          .flatMap(validateSingleLine),
    );
  }

  const UserName._(this.value);
  @override
  final Either<ValueFailure<String>, String> value;

  static const maxLength = 20;
}
