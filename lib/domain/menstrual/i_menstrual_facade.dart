import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/failures.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

abstract class IMenstrualFacade {
  Future<Either<ValueFailure, Unit>> saveMenstraulData(
    MenstrualDataModel menstrualDataModel,
  );
}
