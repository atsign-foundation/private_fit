import 'package:flutter/material.dart';

/*
* This method removes the scroll glow from any widget
*/
class RemoveGlow extends ScrollBehavior {
  @override
  Widget buildViewportChrome(
      BuildContext context, Widget child, AxisDirection axisDirection,) {
    return child;
  }
}

/*
* Example:
* ScrollConfiguration(
*   behavior: RemoveGlow(),
*   child: ListView(
*   ...
* ),
*/
