import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/home/home_view.dart';



class HomePage extends StatelessWidget {
  const HomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider<BotNavBarBloc>(
          create: (context) => getIt<BotNavBarBloc>(),
        ),
      ],
      child: const HomeView(),
    );
  }
}
