import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';
import 'package:private_fit/domain/settings/value_objects.dart';

part 'user_name_dto.freezed.dart';
part 'user_name_dto.g.dart';

@freezed
class UserNameDto with _$UserNameDto {
  factory UserNameDto({
    required String username,
  }) = _UserNameDto;

  factory UserNameDto.fromJson(Map<String, dynamic> json) =>
      _$UserNameDtoFromJson(json);

  const UserNameDto._();

  factory UserNameDto.fromDomain(UserNameModel userNameModel) {
    return UserNameDto(
      username: userNameModel.username.getOrCrash(),
    );
  }

  UserNameModel toDomain() {
    return UserNameModel(
      username: UserName(''),
    );
  }
}
