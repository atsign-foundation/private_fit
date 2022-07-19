import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/menstrual/i_menstrual_facade.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

@lazySingleton
class SaveMenstrualDataUseCase {
  SaveMenstrualDataUseCase(this._iMenstrualFacade);

  final IMenstrualFacade _iMenstrualFacade;

  Future<Either<AtPlatformFailure, Unit>> call(
          MenstrualDataModel menstrualDataModel) =>
      _iMenstrualFacade.saveMenstraulData(menstrualDataModel);
}
