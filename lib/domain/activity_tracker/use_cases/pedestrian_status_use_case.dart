import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';

@lazySingleton
class PedestrianStatusUseCase {
  PedestrianStatusUseCase(this._activityTrackerFacade);

  final IActivityTrackerFacade _activityTrackerFacade;

  Stream<PedestrianStatus> call() =>
      _activityTrackerFacade.pedestrianStatusStream;
}
