import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/settings/i_settings_facade.dart';
import 'package:private_fit/domain/settings/user_name_model.dart';

@lazySingleton
class GettgUserNameUseCase {
  GettgUserNameUseCase(this._iSettingsFacade);

  final ISettingsFacade _iSettingsFacade;

  Future<Either<AtPlatformFailure, UserNameModel>> call() =>
      _iSettingsFacade.getUserName();
}
