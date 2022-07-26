import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class HomepageCard extends StatelessWidget {
  HomepageCard({super.key, this.cardColor, required this.cardChild});

  final Widget cardChild;
  Color? cardColor = Colors.white;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor,
      elevation: 10,
      margin: EdgeInsets.symmetric(
        horizontal: MediaQuery.of(context).size.width / 25,
        vertical: MediaQuery.of(context).size.width / 30,
      ),
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: Theme.of(context).colorScheme.outline,
        ),
        borderRadius: const BorderRadius.all(Radius.circular(12)),
      ),
      child: Padding(
        padding: EdgeInsets.all(MediaQuery.of(context).size.width * 0.04),
        child: cardChild,
      ),
    );
  }
}
