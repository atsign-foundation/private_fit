import 'package:flutter/material.dart';
import 'package:private_fit/presentation/home/widgets/homepage_card.dart';
import 'package:private_fit/shared/iconly_icon.dart';
import 'package:private_fit/shared/icons_curved.dart';

class WorkoutList extends StatelessWidget {
  const WorkoutList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PrivateFitCard(
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
                  color: Theme.of(context).primaryColor,
                  textColor: Colors.white,
                  shape: const CircleBorder(),
                  child: IconlyIcon(
                    path: IconlyCurved.Activity,
                    size: MediaQuery.of(context).size.height * 0.03,
                    color: const Color.fromARGB(255, 12, 49, 54),
                  ),
                  // Icon(
                  //   IconlyCurved(),
                  //   size: MediaQuery.of(context).size.height * 0.03,
                  // ),
                ),
                Divider(
                  height: MediaQuery.of(context).size.height * 0.01,
                ),
                const Text('Activity'),
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
