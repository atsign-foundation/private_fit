import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/menstrual/i_menstrual_facade.dart';
import 'package:private_fit/domain/menstrual/menstrual_data_model.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/infrastructure/menstrual/mentrual_dto.dart';

@LazySingleton(as: IMenstrualFacade)
class MenstrualFacade implements IMenstrualFacade {
  AtClientManager atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();
  final AtSignLogger _logger = AtSignLogger('Settings facade');

  @override
  Future<Either<AtPlatformFailure, Unit>> saveMenstraulData(
    MenstrualDataModel menstrualDataModel,
  ) async {
    _logger.info('----Saving menstrual data--------');

    final _menstrualDataDto = MenstrualDto.fromDomain(menstrualDataModel);
    final _menstrualDataKey = Keys.menstrualDataKey
      ..sharedWith = atClientManager.atClient.getCurrentAtSign()
      ..sharedBy = atClientManager.atClient.getCurrentAtSign()
      ..value = Value(
        value: _menstrualDataDto.toJson(),
        type: 'username',
        labelName: 'User name',
      );

    try {
      _logger.info('Setting a username $menstrualDataModel');
      await _sdkServices.put(_menstrualDataKey);

      return right(unit);
    } catch (e) {
      return left(const AtPlatformFailure.failToSetUsername());
    }
  }
}
