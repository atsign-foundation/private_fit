import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:intl/intl.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'package:private_fit/presentation/home/widgets/homepage_card.dart';

class TodaysActivity extends StatelessWidget {
  const TodaysActivity({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final DateTime now = DateTime.now();
    final String formattedDate = DateFormat.MMMEd('en_US').format(now);
    return PrivateFitCard(
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
                  AutoSizeText(
                    'Steps',
                    style: TextStyle(color: Colors.green),
                  ),
                  AutoSizeText(
                    'Calories',
                    style: TextStyle(color: Colors.orange),
                  ),
                ],
              ),
              progressColor: Colors.orange,
            ),
            progressColor: Colors.green,
          ),
          // SizedBox(
          //   width: MediaQuery.of(context).size.width * 0.04,
          // ),
          const Gap(10),
          // SizedBox(
          // height: MediaQuery.of(context).size.width * 0.35,
          // child:
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const AutoSizeText(
                'Todays Activity',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              const Gap(8),
              AutoSizeText(formattedDate),
              const Gap(12),
              Row(
                children: const [
                  Icon(
                    Icons.directions_walk,
                    color: Colors.green,
                  ),
                  AutoSizeText('Steps'),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.05,
                  // ),
                  Gap(12),
                  Icon(
                    Icons.local_fire_department_rounded,
                    color: Colors.orange,
                  ),
                  AutoSizeText('Calories'),
                ],
              ),
              const Gap(12),
              Row(
                children: [
                  Column(
                    children: const [
                      AutoSizeText(
                        '3:25',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText('Hours'),
                    ],
                  ),
                  // SizedBox(
                  //   width: MediaQuery.of(context).size.width * 0.1,
                  // ),
                  // const Spacer(),
                  const Gap(12),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      AutoSizeText(
                        '6.05',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      AutoSizeText('Kilometers'),
                    ],
                  ),
                ],
              ),
            ],
          ),
          // ),
        ],
      ),
    );
  }
}
