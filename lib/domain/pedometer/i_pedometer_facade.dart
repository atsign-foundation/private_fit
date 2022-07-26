import 'package:dartz/dartz.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/pedometer_failures.dart';

abstract class IPedometerFacade {
  Future<Either<PedometerFailures, Unit>> justPlaceHolder();
  Future<void> initPedometer();

  Stream<StepCount> get stepCountStream;
  Stream<PedestrianStatus> get pedestrianStatusStream;
}
