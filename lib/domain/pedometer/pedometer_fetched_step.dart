/// Status of a "fetch [Step]" operation
enum FetchedStepStatus {
  ok,
  internetNotFound,
  internetError,
  userCancelled,
  codeInvalid,
}

/// A [Step] that we tried to fetch, but was it successful?..
class FetchedStep {
  // The reason behind the "ignore": I want to force "step" to be not null
  FetchedStep(final int step)
      // ignore: prefer_initializing_formals
      : step = step,
        status = FetchedStepStatus.ok;

  /// When the "fetch step" operation didn't go well (no status "ok" here)
  // FetchedStep.error(this.status)
  //     : step = null,
  //       assert(status != FetchedStepStatus.ok, '');

  final int step;
  final FetchedStepStatus status;
}
