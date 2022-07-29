import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:private_fit/application/home/bloc/home_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/components/toast.dart';
import 'package:private_fit/presentation/home/widgets/daily_goal.dart';
import 'package:private_fit/presentation/home/widgets/todays_activity.dart';
import 'package:private_fit/presentation/home/widgets/workout_list.dart';
import 'package:private_fit/presentation/menstrual/widgets/menstrual_widgets.dart';
import 'package:private_fit/presentation/pedometer/pedometer_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Scaffold(
      //todo(@CemTitor): we do not need this for now, do we?
      // floatingActionButton: FloatingActionButton.extended(
      //   onPressed: () {},
      //   shape: RoundedRectangleBorder(
      //     borderRadius: BorderRadius.circular(24),
      //   ),
      //   extendedIconLabelSpacing: 16,
      //   icon: const Icon(Icons.edit),
      //   label: const Text('New activity'),
      // ),
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
              physics: const BouncingScrollPhysics(),
              slivers: [
                const HomeAppBar(),
                const HomeSilver(),
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
      // trailing: Icon(Icons.notifications),
      // leading:
      stretch: true,
      border: Border.all(style: BorderStyle.none),
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      largeTitle: Row(
        children: const [
          // Spacer(),
          AutoSizeText(
            'Kelvin',
            minFontSize: 21,
            maxFontSize: 30,
          ),
          Spacer(
            flex: 15,
          ),
        ],
      ),
      trailing: CircleAvatar(
        child: Image(
          height: 70,
          width: 70,
          fit: BoxFit.cover,
          gaplessPlayback: true,
          image: Image.asset(
            'assets/on_boarding/images/artist_1.png',
          ).image,
        ),
      ),
      // largeTitle: const AutoSizeText(
      //   'Kelvin',
      //   minFontSize: 21,
      //   maxFontSize: 30,
      // ),
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
                return const TodaysActivity();
              case 1:
                return const DailyGoal();
              case 2:
                return const CycleAnalysis();
              case 3:
                return const WorkoutList();
              case 4:
                return const PedomaterPage();
              // default:
              //   return const PedomaterPage();
            }
          } else {
            return Container();
          }
          return null;
        },

        /// Sets ChildCount to one incase of error
        /// and needs to display on Item in the list
        /// This also allows the use of the [RefreshList] widget,
        ///  to refresh the feed.
        childCount: 5,
      ),
    );
  }
}
