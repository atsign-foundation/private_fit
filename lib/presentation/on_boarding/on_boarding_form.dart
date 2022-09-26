import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:logger/logger.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';
import 'package:private_fit/shared/constants.dart';
import 'package:private_fit/shared/images.dart';
import 'package:private_fit/shared/text_strings.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingBloc, OnBoardingState>(
      listener: (context, state) async {
        await state.mapOrNull(
          failure: (state) {
            // todo(kzawadi):  make snack bar or something to show these errors
            Logger(printer: PrettyPrinter()).e(
              'On Boarding failed',
              state.onBoardingFailure.mapOrNull(
                cancelledByUser: (_) => TextStrings.cancelledByUser,
                failedToGetgetApplicationSupportDirectory: (_) =>
                    TextStrings.failuireSupportDirectory,
                serverError: (_) => TextStrings.serverError,
                failToSetOnBoardData: (_) => TextStrings.failureSettingData,
              ),
            );
          },
          loading: (state) async {
            await AtOnboarding.onboard(
              context: context,
              config: AtOnboardingConfig(
                atClientPreference: state.atClientPreference,
                domain: Constants.rootDomain,
                rootEnvironment: RootEnvironment.Staging,
                appAPIKey: Constants.appApiKey,
              ),
            ).then(
              (value) => context.read<OnBoardingBloc>()
                ..add(OnBoardingEvent.atSignOnBoardingSucces(value)),
            );
          },
          loadSuccess: (state) {
            AutoRouter.of(context).replace(const HomeNavigatorRoute());
          },
        );
      },
      builder: (context, state) {
        return state.maybeMap(
          initial: (_) => const OboardInfo(),
          loading: (_) => const OboardInfo(),
          orElse: () => const SizedBox(),
        );
      },
    );
  }
}

class OboardInfo extends StatelessWidget {
  const OboardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        image: DecorationImage(
          image: AssetImage(
            AllImages().trainer,
          ),
          fit: BoxFit.fitHeight,
        ),
      ),
    );
  }
}
