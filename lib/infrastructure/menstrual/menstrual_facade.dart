import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/menstrual/i_menstrual_facade.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

@LazySingleton(as: IMenstrualFacade)
class MenstrualFacade implements IMenstrualFacade {
  @override
  Future<Either<ValueFailure, Unit>> saveMenstraulData(
    MenstrualDataModel menstrualDataModel,
  ) {
    throw UnimplementedError();
  }
}
