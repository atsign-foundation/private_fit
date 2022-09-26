// ignore_for_file: cascade_invocations

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/on_boarding/on_boarding_form.dart';

import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/app_styles.dart';

class OnBoardingPage extends StatelessWidget {
  const OnBoardingPage({super.key});

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return MultiBlocProvider(
      providers: [
        BlocProvider<OnBoardingBloc>(
          create: (context) => getIt<OnBoardingBloc>()
            ..add(
              const OnBoardingEvent.onBoardingAtSign(),
            ),
        ),
      ],
      child: const OnBoardingForm(),
    );
  }
}
