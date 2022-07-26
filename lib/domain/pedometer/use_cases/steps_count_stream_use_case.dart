import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@lazySingleton
class StepsCountStreamUseCase {
  StepsCountStreamUseCase(this._PedometerFacade);

  final IPedometerFacade _PedometerFacade;

  Stream<StepCount> get scs => _PedometerFacade.stepCountStream;
  // Stream<StepCount> call() => _PedometerFacade.stepCountStream;
}
