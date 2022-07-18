import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:at_sync_ui_flutter/at_sync_ui.dart';
import 'package:at_sync_ui_flutter/services/at_sync_ui_services.dart';
// import 'package:at_sync_ui_flutter/at_sync_ui_flutter.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter/services.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;

import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/shared/constants.dart';
import 'package:private_fit/shared/global_navigator_key.dart';

/// Implementation of [IAtsignOnBoardingFacade] interface

@LazySingleton(as: IAtsignOnBoardingFacade)
class OnBoardingAtsignFacade implements IAtsignOnBoardingFacade {
  final AtSignLogger _logger = AtSignLogger('SDK services');
  Map<String?, AtClientService> atClientServiceMap = {};
  AtClientManager atClientManager = AtClientManager.getInstance();

  @override
  Option<String> getOnBoardedAtSign() {
    final _currentAtSign =
        AtClientManager.getInstance().atClient.getCurrentAtSign();
    // _currentAtSign = currentAtSign!;
    return optionOf(_currentAtSign);
  }

  ///This Functional (using functinal programming Haskel like) function
  /// return the [AtClientPreference] instance to be used in [Onboarding]
  /// function also if failures arise (showing a @user an exactly failures
  /// in a nice UI instead of just throwing them as if the @user knows them)
  /// at this stage we delivery them to the [OnBoardingBloc] so it can be party
  /// of App logic
  @override
  Future<Either<AtPlatformFailure, AtClientPreference>>
      loadAtClientPreference() async {
    final appDocumentDirectory =
        await path_provider.getApplicationSupportDirectory();
    final path = appDocumentDirectory.path;
    final _atClientPreference = AtClientPreference()
      ..isLocalStoreRequired = true
      ..commitLogPath = path
      ..rootDomain = Constants.rootDomain
      ..namespace = Constants.appNamespace
      ..syncRegex = Constants.syncRegex
      ..hiveStoragePath = path;
    return right(_atClientPreference);
  }

  @override
  Future<Either<AtPlatformFailure, Unit>> onBoardDataWhenSuccessful(
    Map<String?, AtClientService> v,
    String? atSign,
  ) async {
    return loadAtClientPreference().then(
      (value) => value.fold(
        (l) => left(const AtPlatformFailure.failToSetOnBoardData()),
        (atClientPreference) async {
          await AtClientManager.getInstance().setCurrentAtSign(
            atSign!,
            Constants.appNamespace,
            atClientPreference,
          );
          atClientServiceMap = v;
          await KeychainUtil.makeAtSignPrimary(atSign);
          AtSyncUIService().init(
            appNavigator: NavService.navKey,
            onSuccessCallback: _onSuccessCallback,
            onErrorCallback: () {},
          );
          await HapticFeedback.lightImpact();
          await AtSyncUIService().sync(atSyncUIOverlay: AtSyncUIOverlay.dialog);

          return right(unit);
        },
      ),
    );
  }

  /// Function to be called when sync is done
  Future<void> _onSuccessCallback(SyncResult syncResult) async {
    _logger.finer(
      '==================== ${syncResult.syncStatus.name} ================',
    );
    await HapticFeedback.lightImpact();
  }
}
