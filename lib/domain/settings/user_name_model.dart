import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/settings/value_objects.dart';

part 'user_name_model.freezed.dart';

@freezed
class UserNameModel with _$UserNameModel {
  factory UserNameModel({
    required UserName username,
  }) = _UserNameModel;

  const UserNameModel._();

  factory UserNameModel.empty() => UserNameModel(
        username: UserName('Your name'),
      );

  Option<ValueFailure<dynamic>> get failureOption {
    return username.failureOrUnit.fold(some, (_) => none());
  }
}
