import 'package:flutter/material.dart';

class HomepageCard extends StatelessWidget {
  const HomepageCard({super.key, required this.cardChild, this.cardColor});

  final Widget cardChild;
  final Color? cardColor;

  @override
  Widget build(BuildContext context) {
    return Card(
      color: cardColor ?? Colors.white,
      elevation: 2,
      margin: EdgeInsets.all(MediaQuery.of(context).size.width * 0.02),
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
