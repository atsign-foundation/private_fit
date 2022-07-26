import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:private_fit/presentation/home/widgets/homepage_card.dart';

class TodaysActivity extends StatelessWidget {
  const TodaysActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat.MMMEd('en_US').format(now);
    return HomepageCard(
      cardChild: Row(
        children: [
          CircularPercentIndicator(
            radius: MediaQuery.of(context).size.width * 0.2,
            lineWidth: MediaQuery.of(context).size.width * 0.05,
            percent: 0.6,
            center: CircularPercentIndicator(
              radius: MediaQuery.of(context).size.width * 0.14,
              lineWidth: MediaQuery.of(context).size.width * 0.05,
              percent: 0.3,
              center: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Text(
                    'Steps',
                    style: TextStyle(color: Colors.green),
                  ),
                  Text(
                    'Calories',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              progressColor: Colors.orange,
            ),
            progressColor: Colors.green,
          ),
          SizedBox(
            width: MediaQuery.of(context).size.width * 0.04,
          ),
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.35,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Todays Activity',
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                Text(formattedDate),
                Row(
                  children: [
                    const Icon(
                      Icons.directions_walk,
                      color: Colors.green,
                    ),
                    const Text('Steps'),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.05,
                    ),
                    const Icon(
                      Icons.local_fire_department_rounded,
                      color: Colors.orange,
                    ),
                    const Text('Calories'),
                  ],
                ),
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '3:25',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Hours'),
                      ],
                    ),
                    SizedBox(
                      width: MediaQuery.of(context).size.width * 0.1,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          '6.05',
                          style: TextStyle(fontWeight: FontWeight.bold),
                        ),
                        Text('Kilometers'),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
