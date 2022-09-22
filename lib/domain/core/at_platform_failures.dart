import 'package:freezed_annotation/freezed_annotation.dart';

part 'at_platform_failures.freezed.dart';

@freezed
class AtPlatformFailure with _$AtPlatformFailure {
  const factory AtPlatformFailure.cancelledByUser() = _CancelledByUser;
  const factory AtPlatformFailure.failedToGetgetApplicationSupportDirectory() =
      _FailedToGetgetApplicationSupportDirectory;
  const factory AtPlatformFailure.serverError() = Se_rverError;
  const factory AtPlatformFailure.failToSetOnBoardData() =
      _FailToSetOnBoardData;
  const factory AtPlatformFailure.failToSetUsername() = _FailToSetUsername;
}
