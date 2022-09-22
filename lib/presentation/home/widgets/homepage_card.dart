import 'package:flutter/material.dart';

class PrivateFitCard extends StatelessWidget {
  const PrivateFitCard({super.key, required this.cardChild, this.cardColor});

  final Widget cardChild;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? Theme.of(context).cardColor,
      elevation: 1,
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
