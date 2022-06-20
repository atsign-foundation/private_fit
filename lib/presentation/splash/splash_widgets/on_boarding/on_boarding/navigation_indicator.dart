import 'package:flutter/material.dart';

class OnboardNavigationIndicator extends StatelessWidget {
  const OnboardNavigationIndicator({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    const activeColor = Color(0xFFFFFFFF);
    const defaultColor = Color(0xFFAAAAAA);
    const double width = 20;
    const double height = 5;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          color: pageIndex == 0 ? activeColor : defaultColor,
        ),
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          color: pageIndex == 1 ? activeColor : defaultColor,
        ),
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          color: pageIndex == 2 ? activeColor : defaultColor,
        ),
      ],
    );
  }
}
