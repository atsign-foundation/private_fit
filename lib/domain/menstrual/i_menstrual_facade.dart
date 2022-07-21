import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';

abstract class IMenstrualFacade {
  Future<Either<AtPlatformFailure, Unit>> saveMenstraulData(
    MenstrualDataModel menstrualDataModel,
  );

  Future<Option<MenstrualDataModel>> getMenstraulData();
}
