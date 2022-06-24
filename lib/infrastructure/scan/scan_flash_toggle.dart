// ignore_for_file: avoid_positional_boolean_parameters

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:private_fit/infrastructure/scan/camera_helper.dart';
import 'package:private_fit/infrastructure/scan/user_preferences.dart';
import 'package:provider/provider.dart';

class ScannerFlashToggleWidget extends StatelessWidget {
  const ScannerFlashToggleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Selector<UserPreferences, bool>(
      selector: (_, UserPreferences prefs) => prefs.useFlashWithCamera,
      builder: (BuildContext context, bool value, _) {
        return Tooltip(
          message: 'clickable',
          decoration: BoxDecoration(
            color: value ? Colors.red : Colors.green,
            borderRadius: const BorderRadius.all(Radius.circular(8)),
          ),
          child: InkWell(
            customBorder: const CircleBorder(),
            child: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: 6,
                vertical: 8,
              ),
              child: Icon(
                value ? Icons.flash_on : Icons.flash_off,
                size: 20,
                color: Colors.white,
              ),
            ),
            onTap: () async {
              await HapticFeedback.selectionClick();
              await CameraHelper.controller?.enableFlash(!value);
            },
          ),
        );
      },
    );
  }

  /// Returns the Size of the visor
  static Size getSize(BuildContext context) => Size(
        MediaQuery.of(context).size.width * 0.8,
        150,
      );
}

class ScanVisorPainter extends CustomPainter {
  ScanVisorPainter();

  static const double strokeWidth = 3;
  static const double _fullCornerSize = 31;
  static const double _halfCornerSize = _fullCornerSize / 2;
  static const Radius _borderRadius = Radius.circular(_halfCornerSize);

  final Paint _paint = Paint()
    ..strokeWidth = strokeWidth
    ..color = Colors.white
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
