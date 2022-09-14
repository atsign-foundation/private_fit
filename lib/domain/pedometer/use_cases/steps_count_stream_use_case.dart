import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@lazySingleton
class StepsCountStreamUseCase {
  StepsCountStreamUseCase(this._pedometerFacade);

  final IPedometerFacade _pedometerFacade;

  Stream<StepCount> get call => _pedometerFacade.stepCountStream;
  // Stream<StepCount> call() => _PedometerFacade.stepCountStream;
}
