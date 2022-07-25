import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';

@lazySingleton
class StepsCountStreamUseCase {
  StepsCountStreamUseCase(this._activityTrackerFacade);

  final IActivityTrackerFacade _activityTrackerFacade;

  Stream<StepCount> get scs => _activityTrackerFacade.stepCountStream;
  // Stream<StepCount> call() => _activityTrackerFacade.stepCountStream;
}
