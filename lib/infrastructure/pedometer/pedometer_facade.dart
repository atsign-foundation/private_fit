import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:private_fit/domain/pedometer/pedometer_failures.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@LazySingleton(as: IPedometerFacade)
class PedometerServices extends IPedometerFacade {
  final AtSignLogger _logger = AtSignLogger('PedometerServices');

  @override
  Future<Either<PedometerFailures, Unit>> justPlaceHolder() {
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
