import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/activity_tracker/bloc/pedometer_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/application/home/bloc/home_bloc.dart';
import 'package:private_fit/application/menstrual/bloc/menstrual_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/home/home_navigator_widget.dart';

class HomeNavigator extends StatelessWidget {
  const HomeNavigator({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BotNavBarBloc>(
          create: (context) => getIt<BotNavBarBloc>(),
        ),
        BlocProvider<HomeBloc>(
          create: (context) => getIt<HomeBloc>(),
        ),
        BlocProvider<MenstrualBloc>(
          create: (context) =>
              getIt<MenstrualBloc>()..add(const MenstrualEvent.started()),
        ),
        BlocProvider<PedometerBloc>(
          create: (context) =>
              getIt<PedometerBloc>()..add(const PedometerEvent.initPedometer()),
        ),
      ],
      child: const HomeNavigatorWidget(),
    );
  }
}
