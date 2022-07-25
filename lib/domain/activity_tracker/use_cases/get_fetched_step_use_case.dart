import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';

@lazySingleton
class InitPedometerUseCase {
  InitPedometerUseCase(this._iActivityTrackerFacade);

  final IActivityTrackerFacade _iActivityTrackerFacade;

  Future<void> call() => _iActivityTrackerFacade.initPedometer();
}
