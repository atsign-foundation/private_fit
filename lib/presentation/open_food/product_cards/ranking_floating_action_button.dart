import 'package:flutter/material.dart';
import 'package:private_fit/presentation/open_food/animations/smooth_reveal_animation.dart';

/// Floating Action Button dedicated to Personal Ranking
class RankingFloatingActionButton extends StatelessWidget {
  const RankingFloatingActionButton({
    super.key,
    required this.onPressed,
  });

  final VoidCallback onPressed;

  static const IconData rankingIconData = Icons.emoji_events_outlined;

  @override
  Widget build(BuildContext context) => SmoothRevealAnimation(
        animationCurve: Curves.easeInOutBack,
        startOffset: const Offset(0, 1),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(width: MediaQuery.of(context).size.width * 0.09),
            FloatingActionButton.extended(
              elevation: 12,
              icon: const Icon(rankingIconData),
              label: const Text('myPersonalizedRanking'),
              onPressed: onPressed,
            ),
          ],
        ),
      );
}
