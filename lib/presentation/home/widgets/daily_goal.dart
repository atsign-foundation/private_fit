import 'package:flutter/material.dart';

import 'package:private_fit/presentation/home/widgets/homepage_card.dart';

class DailyGoal extends StatelessWidget {
  const DailyGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomepageCard(
      cardChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text('Your Daily Goal'),
          Row(
            children: const [
              Icon(Icons.directions_walk),
              Text('1000 Steps'),
              Icon(Icons.local_fire_department_rounded),
              Text('100 kcal'),
            ],
          ),
        ],
      ),
    );
  }
}
