import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/i_activity_tracker_facade.dart';

@LazySingleton(as: IActivityTrackerFacade)
class ActivityTrackerServices extends IActivityTrackerFacade {
  final AtSignLogger _logger = AtSignLogger('ActivityTrackerServices');

  @override
  Future<Either<ActivityTrackerFailures, Unit>> justPlaceHolder() {
    throw UnimplementedError();
  }

  late Stream<StepCount> _stepCountStream;
  late Stream<PedestrianStatus> _pedestrianStatusStream;

  Future<void> initPlatformState() async {
    await Permission.activityRecognition.request();
    await Permission.location.request();

    _pedestrianStatusStream = Pedometer.pedestrianStatusStream;
    _stepCountStream = Pedometer.stepCountStream;

    return;
  }

  @override
  Future<void> initPedometer() async {
    await initPlatformState();
    return;
  }

  @override
  Stream<StepCount> get stepCountStream => _stepCountStream;
  @override
  Stream<PedestrianStatus> get pedestrianStatusStream =>
      _pedestrianStatusStream;
}
