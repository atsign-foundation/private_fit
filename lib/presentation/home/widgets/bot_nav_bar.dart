import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:private_fit/application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart';
import 'package:private_fit/l10n/l10n.dart';

class BotNavBar extends StatelessWidget {
  const BotNavBar({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<BotNavBarBloc, int>(
      builder: (context, index) {
        return NavigationBar(
          selectedIndex: index,
          onDestinationSelected: (newIndex) => context
              .read<BotNavBarBloc>()
              .add(BotNavBarEvent.change(newIndex)),
          labelBehavior: NavigationDestinationLabelBehavior.onlyShowSelected,
          animationDuration: const Duration(milliseconds: 1000),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.sports_kabaddi_outlined),
              label: 'Activities',
            ),
            NavigationDestination(
              icon: Icon(Icons.sports_handball_outlined),
              label: 'Training',
            ),
            NavigationDestination(
              icon: Icon(Icons.fastfood_outlined),
              label: 'Nutritional scan',
            ),
            NavigationDestination(
              icon: Icon(Icons.history_outlined),
              label: 'History',
            ),
          ],
        );
      },
    );
  }
}
