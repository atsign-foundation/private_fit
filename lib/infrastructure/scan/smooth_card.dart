import 'package:flutter/material.dart';

/// Renders a Material card with elevation, shadow, Border radius etc...
/// Note: If the caller updates BoxDecoration of the [header] or [child] widget,
/// the caller must also set the borderRadius to [ROUNDED_RADIUS] in
/// BoxDecoration.
/// Note: [padding] applies to both header and body, if you want to have a
/// padding only for body and not for header (or vice versa) set it to zero here
/// and set the padding explicitly in the desired element.
class SmoothCard extends StatelessWidget {
  const SmoothCard({
    required this.child,
    this.color,
    this.margin = const EdgeInsets.symmetric(
      horizontal: SMALL_SPACE,
      vertical: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5.0),
    this.elevation = 8,
    this.borderRadius,
  });

  const SmoothCard.angular({
    required this.child,
    this.color,
    this.margin = const EdgeInsets.symmetric(
      horizontal: SMALL_SPACE,
      vertical: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5.0),
    this.elevation = 8,
  }) : borderRadius = ANGULAR_BORDER_RADIUS;

  const SmoothCard.flat({
    required this.child,
    this.color,
    this.margin = const EdgeInsets.only(
      right: SMALL_SPACE,
      left: SMALL_SPACE,
      top: VERY_SMALL_SPACE,
      bottom: VERY_SMALL_SPACE,
    ),
    this.padding = const EdgeInsets.all(5.0),
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

const String APP_NAME = 'OpenFoodFacts';

const Widget EMPTY_WIDGET = SizedBox.shrink();

const double VERY_SMALL_SPACE = 4.0;
const double SMALL_SPACE = 8.0;
const double MEDIUM_SPACE = 12.0;
const double LARGE_SPACE = 16.0;
const double VERY_LARGE_SPACE = 20.0;
const double MINIMUM_TOUCH_SIZE = 48.0;

/// Default icon size, cf. [Icon]
const double DEFAULT_ICON_SIZE = 24.0;

/// Default icon size, cf. goldens.dart
const double MINIMUM_TARGET_SIZE = 48.0;

/// Background, e.g SmoothCard
const Radius ROUNDED_RADIUS = Radius.circular(20.0);
//ignore: non_constant_identifier_names
const BorderRadius ROUNDED_BORDER_RADIUS = BorderRadius.all(ROUNDED_RADIUS);

/// Full screen button, e.g. KnowledgePanel
const Radius ANGULAR_RADIUS = Radius.circular(8.0);
//ignore: non_constant_identifier_names
const BorderRadius ANGULAR_BORDER_RADIUS = BorderRadius.all(ANGULAR_RADIUS);

/// Buttons & TextFields
const Radius CIRCULAR_RADIUS = Radius.circular(40.0);
//ignore: non_constant_identifier_names
const BorderRadius CIRCULAR_BORDER_RADIUS = BorderRadius.all(CIRCULAR_RADIUS);

/// Widget Colors
const MaterialColor WARNING_COLOR = Colors.deepOrange;
const Color PRIMARY_BLUE_COLOR = Color(0xFF2D9CDB);
const Color PRIMARY_GREY_COLOR = Color(0xFF4F4F4F);
const Color FAIR_GREY_COLOR = Color(0xFF888888);
const Color GREY_COLOR = Color(0xFFF2F2F2);
const Color WHITE_COLOR = Color(0xFFFFFFFF);
const Color DARK_GREEN_COLOR = Color(0xFF219653);
const Color LIGHT_GREEN_COLOR = Color(0xFF60AC0E);
const Color LIGHT_YELLOW_COLOR = Color(0xFFF2C94C);
const Color LIGHT_GREY_COLOR = Color(0xFFBFBFBF);
const Color DARK_YELLOW_COLOR = Color(0xFFC88F01);
const Color LIGHT_ORANGE_COLOR = Color(0xFFF2994A);
const Color DARK_ORANGE_COLOR = Color(0xFFE07312);
const Color RED_COLOR = Color(0xFFEB5757);
const Color LIGHT_RED_COLOR = Color(0xFFFFCBCB);
const Color DARK_RED_COLOR = Color(0xFFFF0000);

/// Widget Background Colors
const Color RED_BACKGROUND_COLOR = Color.fromRGBO(255, 204, 204, 1);
const Color ORANGE_BACKGROUND_COLOR = Color.fromRGBO(255, 230, 204, 1);
const Color YELLOW_BACKGROUND_COLOR = Color.fromRGBO(255, 255, 204, 1);
const Color LIGHT_GREEN_BACKGROUND_COLOR = Color.fromRGBO(230, 255, 204, 1);
const Color DARK_GREEN_BACKGROUND_COLOR = Color.fromRGBO(204, 255, 204, 1);
