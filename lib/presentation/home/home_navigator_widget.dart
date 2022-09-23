import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/presentation/home/home_page.dart';
import 'package:private_fit/presentation/home/widgets/bot_nav_bar.dart';
import 'package:private_fit/presentation/menstrual/menstrual_page.dart';
import 'package:private_fit/presentation/open_food/scanner_page.dart';
import 'package:private_fit/presentation/settings/settings_view.dart';

class HomeNavigatorWidget extends StatelessWidget {
  const HomeNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BotNavBarBloc, int>(
      bloc: getIt<BotNavBarBloc>(),
      builder: (BuildContext context, i) {
        return Scaffold(
          body: IndexedStack(
            index: i,
            children: const [
              HomePage(),
              MenstrualPage(),
              ScannerPage(),
              SettingsPageView()
            ],
          ),
          bottomNavigationBar: const BotNavBar(),
        );
      },
    );
  }
}
