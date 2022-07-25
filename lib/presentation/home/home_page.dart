import 'dart:math' as math;

import 'package:at_sync_ui_flutter/services/at_sync_ui_services.dart';
import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/home/bloc/home_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/components/custom_sync_widget.dart';
import 'package:private_fit/presentation/components/global.dart';
import 'package:private_fit/presentation/components/toast.dart';
import 'package:private_fit/presentation/menstrual/widgets/menstrual_widgets.dart';
import 'package:private_fit/presentation/pedometer/pedometer_page.dart';
import 'package:private_fit/shared/images.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      body: BlocConsumer<HomeBloc, HomeState>(
        bloc: getIt<HomeBloc>(),
        listener: (context, state) {
          state.whenOrNull(
            username: (result) {
              showToast(
                context,
                state.maybeWhen(
                  username: (result) {
                    return result.fold(
                      (l) => l.maybeWhen(
                        failToSetUsername: () => 'hh',
                        orElse: () => '',
                      ),
                      (r) => 'Succesful updated Username',
                    );
                  },
                  orElse: () => '',
                ),
              );
            },
          );
        },
        builder: (context, state) {
          return Scaffold(
            body: CustomScrollView(
              physics: BouncingScrollPhysics(),
              slivers: [
                const HomeAppBar(),
                HomeSilver(),
                CupertinoSliverRefreshControl(
                  onRefresh: () async {
                    // return await context.refresh(newsFutureProvider);
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return CupertinoSliverNavigationBar(
      stretch: true,
      border: Border.all(style: BorderStyle.none),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      largeTitle: const AutoSizeText(
        'Kelvin',
        minFontSize: 21,
        maxFontSize: 30,
      ),
    );
  }
}

class HomeSilver extends StatelessWidget {
  const HomeSilver({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index <= 5) {
            switch (index) {
              case 0:
                return const Divider(height: 40);
              case 1:
                return const CycleAnalysis();
              case 2:
                return const Divider(height: 30);
              default:
                return const PedomaterPage();
            }
          } else {
            return Container();
          }
        },

        /// Sets ChildCount to one incase of error and needs to display on Item in the list
        /// This also allows the use of the [RefreshList] widget, to refresh the feed.
        childCount: 4,
      ),
    );
  }
}
