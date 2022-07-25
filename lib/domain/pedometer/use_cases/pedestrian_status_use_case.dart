import 'package:injectable/injectable.dart';
import 'package:pedometer/pedometer.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@lazySingleton
class PedestrianStatusUseCase {
  PedestrianStatusUseCase(this._PedometerFacade);

  final IPedometerFacade _PedometerFacade;

  Stream<PedestrianStatus> call() => _PedometerFacade.pedestrianStatusStream;
}
