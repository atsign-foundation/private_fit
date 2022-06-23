import 'package:flutter/material.dart';

class OnboardNavigationIndicator extends StatelessWidget {
  const OnboardNavigationIndicator({
    Key? key,
    required this.pageIndex,
  }) : super(key: key);

  final int pageIndex;

  @override
  Widget build(BuildContext context) {
    const activeColor = Color.fromARGB(255, 19, 109, 121); //Color(0xFFFFFFFF);
    const defaultColor = Color.fromARGB(255, 189, 186, 186);
    const width = 20.0;
    const height = 5.0;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: pageIndex == 0 ? activeColor : defaultColor,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: pageIndex == 1 ? activeColor : defaultColor,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
        Container(
          width: width,
          height: height,
          margin: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: pageIndex == 2 ? activeColor : defaultColor,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
        ),
      ],
    );
  }
}
