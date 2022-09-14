import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@lazySingleton
class PedestrianStatusUseCase {
  PedestrianStatusUseCase(this._pedometerFacade);

  final IPedometerFacade _pedometerFacade;

  Stream<PedestrianStatus> get call => _pedometerFacade.pedestrianStatusStream;
}
