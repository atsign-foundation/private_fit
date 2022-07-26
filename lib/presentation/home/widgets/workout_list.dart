import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:percent_indicator/percent_indicator.dart';

import 'homepage_card.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return HomepageCard(
      cardChild: SizedBox(
        height: MediaQuery.of(context).size.height * 0.11,
        child: ListView.separated(
          scrollDirection: Axis.horizontal,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: [
                MaterialButton(
                  height: 60,
                  onPressed: () {},
                  color: Colors.blue,
                  textColor: Colors.white,
                  child: Icon(
                    Icons.camera_alt,
                    size: MediaQuery.of(context).size.height * 0.03,
                  ),
                  shape: CircleBorder(),
                ),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                Text('Activity'),
              ],
            );
          },
          separatorBuilder: (BuildContext context, int index) {
            return SizedBox(
              width: MediaQuery.of(context).size.width * 0.0005,
            );
          },
          itemCount: 8,
        ),
      ),
    );
  }
}
