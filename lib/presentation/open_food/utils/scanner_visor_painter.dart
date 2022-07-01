import 'package:flutter/material.dart';

class ScanVisorPainter extends CustomPainter {
  ScanVisorPainter();

  static const double strokeWidth = 3;
  static const double _fullCornerSize = 31;
  static const double _halfCornerSize = _fullCornerSize / 2;
  static const Radius _borderRadius = Radius.circular(15);

  final Paint _paint = Paint()
    ..strokeWidth = strokeWidth
    ..color = Colors.yellow
    ..style = PaintingStyle.stroke;

  @override
  void paint(Canvas canvas, Size size) {
    final rect = Rect.fromLTRB(0, 0, size.width, size.height);
    canvas.drawPath(getPath(rect, false), _paint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;

  /// Returns a path to draw the visor
  /// [includeLineBetweenCorners] will draw lines between each corner, instead
  /// of moving the cursor
  // ignore: avoid_positional_boolean_parameters
  static Path getPath(Rect rect, bool includeLineBetweenCorners) {
    final double bottomPosition;
    if (includeLineBetweenCorners) {
      bottomPosition = rect.bottom - strokeWidth;
    } else {
      bottomPosition = rect.bottom;
    }

    final path = Path()
      // Top left
      ..moveTo(rect.left, rect.top + _fullCornerSize)
      ..lineTo(rect.left, rect.top + _halfCornerSize)
      ..arcToPoint(
        Offset(rect.left + _halfCornerSize, rect.top),
        radius: _borderRadius,
      )
      ..lineTo(rect.left + _fullCornerSize, rect.top);

    // Top right
    if (includeLineBetweenCorners) {
      path.lineTo(rect.right - _fullCornerSize, rect.top);
    } else {
      path.moveTo(rect.right - _fullCornerSize, rect.top);
    }

    path
      ..lineTo(rect.right - _halfCornerSize, rect.top)
      ..arcToPoint(
        Offset(rect.right, _halfCornerSize),
        radius: _borderRadius,
      )
      ..lineTo(rect.right, rect.top + _fullCornerSize);

    // Bottom right
    if (includeLineBetweenCorners) {
      path.lineTo(rect.right, bottomPosition - _fullCornerSize);
    } else {
      path.moveTo(rect.right, bottomPosition - _fullCornerSize);
    }

    path
      ..lineTo(rect.right, bottomPosition - _halfCornerSize)
      ..arcToPoint(
        Offset(rect.right - _halfCornerSize, bottomPosition),
        radius: _borderRadius,
      )
      ..lineTo(rect.right - _fullCornerSize, bottomPosition);

    // Bottom left
    if (includeLineBetweenCorners) {
      path.lineTo(rect.left + _fullCornerSize, bottomPosition);
    } else {
      path.moveTo(rect.left + _fullCornerSize, bottomPosition);
    }

    path
      ..lineTo(rect.left + _halfCornerSize, bottomPosition)
      ..arcToPoint(
        Offset(rect.left, bottomPosition - _halfCornerSize),
        radius: _borderRadius,
      )
      ..lineTo(rect.left, bottomPosition - _fullCornerSize);

    if (includeLineBetweenCorners) {
      path.lineTo(rect.left, rect.top + _halfCornerSize);
    }

    return path;
  }
}
