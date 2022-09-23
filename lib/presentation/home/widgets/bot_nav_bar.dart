import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/shared/iconly_icon.dart';
import 'package:private_fit/shared/icons_curved.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<BotNavBarBloc, int>(
      builder: (context, index) {
        return NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (newIndex) => context
              .read<BotNavBarBloc>()
              .add(BotNavBarEvent.change(newIndex)),
          animationDuration: const Duration(milliseconds: 1000),
          destinations: const [
            NavigationDestination(
              icon: IconlyIcon(
                path: IconlyCurved.Home,
                size: 25,
                color: Color.fromARGB(255, 12, 49, 54),
              ),
              label: 'Activities',
            ),
            NavigationDestination(
              icon: IconlyIcon(
                path: IconlyCurved.Calendar,
                size: 25,
                color: Color.fromARGB(255, 12, 49, 54),
              ),
              label: 'Period',
            ),
            NavigationDestination(
              icon: IconlyIcon(
                path: IconlyCurved.Scan,
                size: 25,
                color: Color.fromARGB(255, 12, 49, 54),
              ),
              label: 'Nutritional scan',
            ),
            NavigationDestination(
              icon: IconlyIcon(
                path: IconlyCurved.Setting,
                size: 25,
                color: Color.fromARGB(255, 12, 49, 54),
              ),
              label: 'History',
            ),
          ],
        );
      },
    );
  }
}
