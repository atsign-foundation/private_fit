import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'homepage_card.dart';

class DailyGoal extends StatelessWidget {
  const DailyGoal({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomepageCard(
      cardChild: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text('Your Daily Goal'),
          Row(
            children: [
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
