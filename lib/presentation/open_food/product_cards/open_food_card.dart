// ignore_for_file: comment_references

import 'package:flutter/material.dart';
import 'package:private_fit/presentation/open_food/product_cards/design_constants.dart';

/// Renders a Material card with elevation, shadow, Border radius etc...
/// Note: If the caller updates BoxDecoration of the [header] or [child] widget,
/// the caller must also set the borderRadius to [ROUNDED_RADIUS] in
/// BoxDecoration.
/// Note: [padding] applies to both header and body, if you want to have a
/// padding only for body and not for header (or vice versa) set it to zero here
/// and set the padding explicitly in the desired element.
class OpenFoodCard extends StatelessWidget {
  const OpenFoodCard({
    super.key,
    required this.child,
    this.color,
    this.margin = const EdgeInsets.symmetric(
      horizontal: SMALL_SPACE,
      vertical: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5),
    this.elevation = 8,
    this.borderRadius,
  });

  const OpenFoodCard.angular({
    super.key,
    required this.child,
    this.color,
    this.margin = const EdgeInsets.symmetric(
      horizontal: SMALL_SPACE,
      vertical: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5),
    this.elevation = 8,
  }) : borderRadius = ANGULAR_BORDER_RADIUS;

  const OpenFoodCard.flat({
    super.key,
    required this.child,
    this.color,
    this.margin = const EdgeInsets.only(
      right: SMALL_SPACE,
      left: SMALL_SPACE,
      top: VERY_SMALL_SPACE,
      bottom: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5),
    this.elevation = 0,
    this.borderRadius,
  });

  final Widget child;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final EdgeInsetsGeometry? padding;
  final BorderRadiusGeometry? borderRadius;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    final Widget result = Material(
      elevation: elevation,
      shadowColor: const Color.fromARGB(25, 0, 0, 0),
      borderRadius: borderRadius ?? ROUNDED_BORDER_RADIUS,
      color: color ??
          (Theme.of(context).brightness == Brightness.light
              ? Colors.white
              : Colors.black),
      child: Container(
        padding: padding,
        child: child,
      ),
    );
    return margin == null
        ? result
        : Padding(
            padding: margin!,
            child: result,
          );
  }
}
