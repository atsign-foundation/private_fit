// ignore_for_file: avoid_print

import 'package:at_contacts_flutter/at_contacts_flutter.dart';
import 'package:at_contacts_group_flutter/utils/colors.dart';
import 'package:at_onboarding_flutter/at_onboarding_flutter.dart';
// import 'package:at_onboarding_flutter/services/size_config.dart' as sizing;
import 'package:auto_route/auto_route.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/presentation/routes/router.gr.dart';
import 'package:private_fit/shared/constants.dart';
import 'package:private_fit/shared/images.dart';
import 'package:private_fit/shared/text_strings.dart';
import 'package:private_fit/shared/text_styles.dart';

class OnBoardingForm extends StatelessWidget {
  const OnBoardingForm({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<OnBoardingBloc, OnBoardingState>(
      listener: (context, state) {
        state.mapOrNull(
          failure: (state) {
            //todo make a snack bar or something to show these errors
            print(
              state.onBoardingFailure.map(
                cancelledByUser: (_) => TextStrings.cancelledByUser,
                failedToGetgetApplicationSupportDirectory: (_) =>
                    TextStrings.failuireSupportDirectory,
                serverError: (_) => TextStrings.serverError,
                failToSetOnBoardData: (_) => TextStrings.failureSettingData,
              ),
            );
          },
          loading: (state) {
            Onboarding(
              context: context,
              onboard: (value, atsign) {
                context.read<OnBoardingBloc>().add(
                      OnBoardingEvent.atSignOnBoardingSucces(value, atsign),
                    );
              },
              onError: (error) {
                context.read<OnBoardingBloc>().add(
                      OnBoardingEvent.onBoardingError(error),
                    );
              },
              atClientPreference: state.atClientPreference,
              rootEnvironment: RootEnvironment.Staging,
              // appAPIKey: Constants.appApiKey,
              domain: Constants.rootDomain,
              appColor: Colors.cyan,
            );
          },
        );
      },
      builder: (context, state) {
        return state.maybeWhen(
          loading: (_) => const OboardInfo(),
          loadSuccess: (atSign) {
            return atSign.fold(
              () => const CircularProgressIndicator(color: Colors.cyanAccent),
              (a) {
                AutoRouter.of(context).replace(const HomePageRoute());
                return const CircularProgressIndicator();
              },
            );
          },
          onBoardingError: (e) {
            return AutoSizeText(e.toString());
          },
          orElse: () => const Scaffold(
            body: Center(
              child: SizedBox(
                height: 30,
                width: 30,
                child: Center(
                  child: CircularProgressIndicator(
                    color: Colors.cyanAccent,
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}

class OboardInfo extends StatelessWidget {
  const OboardInfo({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Material(
      child: Container(
        // width: SizeConfig().screenWidth,
        // height: SizeConfig().screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(
              AllImages().meditation,
            ),
            fit: BoxFit.fill,
          ),
        ),
        // child: SafeArea(
        //   child: Column(
        //     crossAxisAlignment: CrossAxisAlignment.start,
        //     children: [
        //       const Expanded(flex: 8, child: SizedBox()),
        //       Expanded(
        //         flex: 8,
        //         child: Container(
        //           padding: const EdgeInsets.symmetric(
        //             horizontal: 36,
        //             vertical: 10,
        //           ),
        //           child: Column(
        //             crossAxisAlignment: CrossAxisAlignment.start,
        //             children: [
        //               Expanded(
        //                 flex: 6,
        //                 child: Column(
        //                   crossAxisAlignment: CrossAxisAlignment.start,
        //                   children: [
        //                     Text(
        //                       TextStrings.stayConnected,
        //                       textScaleFactor: 1,
        //                       style: CustomTextStyles().blackPlayfairDisplay38,
        //                     ),
        //                     const SizedBox(height: 5),
        //                     Text(
        //                       TextStrings.whereEver,
        //                       textScaleFactor: 1,
        //                       style: CustomTextStyles().blackPlayfairDisplay38,
        //                     ),
        //                     const SizedBox(
        //                       height: 5,
        //                     ),
        //                     Text(
        //                       TextStrings.youGo,
        //                       textScaleFactor: 1,
        //                       style: CustomTextStyles().blackPlayfairDisplay38,
        //                     ),
        //                   ],
        //                 ),
        //               ),
        //             ],
        //           ),
        //         ),
        //       ),
        //       const Expanded(child: SizedBox()),
        //       Expanded(
        //         flex: 4,
        //         child: Padding(
        //           padding: const EdgeInsets.symmetric(horizontal: 25),
        //           child: Opacity(
        //             opacity: 1,
        //             child: Column(
        //               children: [
        //                 CustomButton(
        //                   height: 40,
        //                   width: 20,
        //                   borderRadius: 100,
        //                   onPressed: () async {},
        //                   buttonColor: AllColors().Black,
        //                   // child:
        //                   // authenticating
        //                   // ?
        //                   //     Center(
        //                   //   child: Row(
        //                   //     mainAxisAlignment: MainAxisAlignment.center,
        //                   //     children: [
        //                   //       Text(
        //                   //         TextStrings.authenticating,
        //                   //         textScaleFactor: 1,
        //                   //         style: CustomTextStyles().white15,
        //                   //       ),
        //                   //       const TypingIndicator(
        //                   //         showIndicator: true,
        //                   //       ),
        //                   //     ],
        //                   //   ),
        //                   // ),
        //                 ),
        //               ],
        //             ),
        //           ),
        //         ),
        //       ),
        //       const Center(
        //         child: Text(
        //           TextStrings.appName,
        //           style: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
        //         ),
        //       ),
        //       const SizedBox(height: 5),
        //       Center(
        //         child: Text(
        //           TextStrings.copyRight,
        //           style: TextStyle(
        //             fontSize: 14,
        //             fontFamily: 'HelveticaNeu',
        //             color: Colors.grey.withOpacity(0.8),
        //           ),
        //         ),
        //       ),
        //     ],
        //   ),
        // ),
      ),
    );
  }
}
