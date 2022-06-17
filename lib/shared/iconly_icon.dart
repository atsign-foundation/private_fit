import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class IconlyIcon extends StatelessWidget {
  const IconlyIcon({
    Key? key,
    required this.path,
    this.color,
    this.size,
  }) : super(key: key);
  final String path;
  final Color? color;
  final double? size;
  @override
  Widget build(BuildContext context) {
    return SvgPicture.asset(
      path,
      color: color ?? Colors.black,
      width: size ?? 24,
      height: size ?? 24,
      semanticsLabel: '',
    );
  }
}
