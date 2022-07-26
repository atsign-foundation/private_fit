import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/pedometer/i_pedometer_facade.dart';

@lazySingleton
class InitPedometerUseCase {
  InitPedometerUseCase(this._iPedometerFacade);

  final IPedometerFacade _iPedometerFacade;

  Future<void> call() => _iPedometerFacade.initPedometer();
}
