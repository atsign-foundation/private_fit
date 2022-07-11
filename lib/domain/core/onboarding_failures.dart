import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_failures.freezed.dart';

@freezed
class OnBoardingFailure with _$OnBoardingFailure {
  const factory OnBoardingFailure.cancelledByUser() = CancelledByUser;
  const factory OnBoardingFailure.failedToGetgetApplicationSupportDirectory() =
      FailedToGetgetApplicationSupportDirectory;
  const factory OnBoardingFailure.serverError() = ServerError;
  const factory OnBoardingFailure.failToSetOnBoardData() = FailToSetOnBoardData;
  const factory OnBoardingFailure.failToSetUsername() = _FailToSetUsername;
}
