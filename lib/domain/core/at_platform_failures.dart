import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_platform_failures.freezed.dart';

@freezed
class AtPlatformFailure with _$AtPlatformFailure {
  const factory AtPlatformFailure.cancelledByUser() = CancelledByUser;
  const factory AtPlatformFailure.failedToGetgetApplicationSupportDirectory() =
      FailedToGetgetApplicationSupportDirectory;
  const factory AtPlatformFailure.serverError() = ServerError;
  const factory AtPlatformFailure.failToSetOnBoardData() = FailToSetOnBoardData;
  const factory AtPlatformFailure.failToSetUsername() = _FailToSetUsername;
  const factory AtPlatformFailure.unExpectedError() = _UnExpectedError;
}
