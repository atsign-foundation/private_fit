import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/menstrual/i_menstrual_facade.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

@lazySingleton
class GetMenstrualDataUseCase {
  GetMenstrualDataUseCase(this._iMenstrualFacade);

  final IMenstrualFacade _iMenstrualFacade;

  Future<Option<MenstrualDataModel>> call() =>
      _iMenstrualFacade.getMenstraulData();
}
