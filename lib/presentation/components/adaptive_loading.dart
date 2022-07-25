// 🐦 Flutter imports:
import 'package:flutter/material.dart';
import 'package:private_fit/presentation/components/global.dart';

class AdaptiveLoading extends StatelessWidget {
  const AdaptiveLoading({
    Key? key,
    this.strokeWidth,
    this.size,
    this.color,
  }) : super(key: key);
  final double? strokeWidth, size;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: squareWidget(
        size ?? 20,
        child: CircularProgressIndicator.adaptive(
          strokeWidth: strokeWidth ?? 2,
          valueColor: AlwaysStoppedAnimation<Color>(
            color ?? Theme.of(context).primaryColor,
          ),
        ),
      ),
    );
  }
}
