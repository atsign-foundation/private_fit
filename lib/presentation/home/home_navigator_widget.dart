import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/home/home_page.dart';
import 'package:private_fit/presentation/home/widgets/bot_nav_bar.dart';
import 'package:private_fit/presentation/menstrual/menstrual_page.dart';
import 'package:private_fit/presentation/open_food/scanner_page.dart';
import 'package:private_fit/presentation/settings/settings_page.dart';
import 'package:private_fit/presentation/settings/settings_view.dart';

class HomeNavigatorWidget extends StatelessWidget {
  const HomeNavigatorWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<BotNavBarBloc, int>(
      bloc: getIt<BotNavBarBloc>(),
      builder: (context, i) {
        return Scaffold(
          // floatingActionButton: FloatingActionButton.extended(
          //   onPressed: () {},
          //   shape: RoundedRectangleBorder(
          //     borderRadius: BorderRadius.circular(24),
          //   ),
          //   extendedIconLabelSpacing: 16,
          //   icon: const Icon(Icons.edit),
          //   label: const Text('New activity'),
          // ),
          bottomNavigationBar: NavigationBarTheme(
            data: NavigationBarThemeData(
              // indicatorColor: Theme.of(context).primaryColor,
              labelTextStyle: MaterialStateProperty.all(
                const TextStyle(
                  fontSize: 12.5,
                  fontWeight: FontWeight.w400,
                ),
              ),
              elevation: 1.5,
            ),
            child: const BotNavBar(),
          ),
          backgroundColor: Theme.of(context).backgroundColor,
          body: i == 0
              ? const HomePage()
              : i == 1
                  ? const MenstrualPage()
                  : i == 2
                      ? const ScannerPage()
                      : i == 3
                          ? const SettingsPage()
                          //  Container(
                          //     color: Colors.white,
                          //     child: const Center(
                          //       child: Text(
                          //         'History',
                          //         style: TextStyle(fontSize: 40.5),
                          //       ),
                          //     ),
                          //   )
                          : Container(),
        );
      },
    );
  }
}
