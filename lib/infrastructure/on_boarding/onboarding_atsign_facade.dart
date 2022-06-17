import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart' as path_provider;
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/domain/on_boarding/onboarding_failures.dart';
import 'package:private_fit/shared/constants.dart';

/// Implementation of [IAtsignOnBoardingFacade] interface

@Injectable(as: IAtsignOnBoardingFacade)
class OnBoardingAtsignFacade implements IAtsignOnBoardingFacade {
  OnBoardingAtsignFacade();
  Map<String?, AtClientService> atClientServiceMap = {};

  @override
  Option<String> getOnBoardedAtSign() {
    final atClient = AtClientManager.getInstance().atClient;
    return optionOf(atClient.getCurrentAtSign());
  }

  ///This Functional (using functinal programming Haskel like) function
  /// return the [AtClientPreference] instance to be used in [Onboarding]
  /// function also if failures arise (showing a @user an exactly failures
  /// in a nice UI instead of just throwing them as if the @user knows them)
  /// at this stage we delivery them to the [OnBoardingBloc] so it can be party
  /// of App logic
  @override
  Future<Either<OnBoardingFailure, AtClientPreference>>
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
  Future<Either<OnBoardingFailure, Unit>> onBoardDataWhenSuccessful(
    Map<String?, AtClientService> v,
    String? atSign,
  ) async =>
      loadAtClientPreference().then(
        (value) => value.fold(
          (l) => left(const OnBoardingFailure.failToSetOnBoardData()),
          (atClientPreference) async {
            await AtClientManager.getInstance().setCurrentAtSign(
              atSign!,
              Constants.appNamespace,
              atClientPreference,
            );
            atClientServiceMap = v;
            await KeychainUtil.makeAtSignPrimary(atSign);
            AtClientManager.getInstance().syncService.sync();
            return right(unit);
          },
        ),
      );
}
