import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/settings/i_settings_facade.dart';

@lazySingleton
class GettgUserNameUseCase {
  GettgUserNameUseCase(this._iSettingsFacade);

  final ISettingsFacade _iSettingsFacade;

  Future<String?> call() => _iSettingsFacade.getUserName();
}
