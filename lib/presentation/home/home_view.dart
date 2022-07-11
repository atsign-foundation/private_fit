import 'dart:math' as math;

import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/home/widgets/bot_nav_bar.dart';
import 'package:private_fit/presentation/open_food/scanner_page.dart';
import 'package:private_fit/shared/images.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return BlocBuilder<BotNavBarBloc, int>(
      bloc: getIt<BotNavBarBloc>(),
      builder: (context, i) {
        return Scaffold(
          floatingActionButton: FloatingActionButton.extended(
            onPressed: () {},
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(24),
            ),
            extendedIconLabelSpacing: 16,
            icon: const Icon(Icons.edit),
            label: const Text('New activity'),
          ),
          bottomNavigationBar: NavigationBarTheme(
              data: NavigationBarThemeData(
                indicatorColor: Colors.cyan[100],
                labelTextStyle: MaterialStateProperty.all(
                  const TextStyle(
                    fontSize: 12.5,
                    fontWeight: FontWeight.w400,
                  ),
                ),
                elevation: 1.5,
              ),
              child: const BotNavBar(),),
          backgroundColor: Colors.cyan,
          body: i == 0
              ? Stack(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        image: DecorationImage(
                          image: AssetImage(
                            AllImages().trainer,
                          ),
                          fit: BoxFit.fitHeight,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 680,
                      left: 30,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        alignment: Alignment.centerLeft,
                        child: AutoSizeText(
                          l10n.app_title,
                          style: const TextStyle(
                            fontSize: 60,
                            color: Color.fromARGB(255, 7, 54, 92),
                            fontWeight: FontWeight.w800,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 110,
                      left: 70,
                      child: Transform.rotate(
                        angle: -math.pi / 2,
                        alignment: Alignment.centerLeft,
                        child: const AutoSizeText(
                          'Welcome @sign',
                          style: TextStyle(
                            fontSize: 18,
                            color: Color.fromARGB(255, 5, 99, 98),
                            fontWeight: FontWeight.w300,
                            fontStyle: FontStyle.italic,
                          ),
                        ),
                      ),
                    ),
                    // Align(
                    //   child: ElevatedButton(
                    //     onPressed: () {
                    //       AutoRouter.of(context).replace(const ScannerPageRoute());
                    //     },
                    //     child: const Icon(
                    //       Icons.search_off_outlined,
                    //       size: 20,
                    //     ),
                    //   ),
                    // ),
                  ],
                )
              : i == 1
                  ? Container(
                      color: Colors.white,
                      child: const Center(
                        child: Text(
                          'Training',
                          style: TextStyle(fontSize: 40.5),
                        ),
                      ),
                    )
                  : i == 2
                      ? const ScannerPage()
                      : i == 3
                          ? Container(
                              color: Colors.white,
                              child: const Center(
                                child: Text(
                                  'History',
                                  style: TextStyle(fontSize: 40.5),
                                ),
                              ),
                            )
                          : Container(),
        );
      },
    );
  }
}
