import 'dart:ffi';

import 'package:dartz/dartz.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_failures.dart';
import 'package:private_fit/domain/activity_tracker/activity_tracker_fetched_step.dart';
import 'package:rxdart/rxdart.dart';

abstract class IActivityTrackerFacade {
  Future<Either<ActivityTrackerFailures, Unit>> justPlaceHolder();
  Future<void> initPedometer();

  Stream<StepCount> get stepCountStream;
  Stream<PedestrianStatus> get pedestrianStatusStream;
}
