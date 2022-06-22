import 'package:flutter/material.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/splash/splash_widgets/app_assets.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/blend_mask.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_3d_model.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_3d_model_controller.dart';

class Splash3dWidget extends StatelessWidget {
  const Splash3dWidget({
    this.topTitle = '',
    this.bottomTitle = '',
    this.backgroundColor,
    this.image,
    this.pageIndex = 0,
    required this.controller,
    this.topTitleClipProgress = 0.0,
    this.bottomTitleClipProgress = 0.0,
    this.bottomTitleScale = 1.0,
    this.backgroundShapeOpacity = 0.85,
    Key? key,
  }) : super(key: key);

  final String topTitle;
  final String bottomTitle;
  final Color? backgroundColor;
  final ImageProvider? image;
  final int pageIndex;
  final double bottomTitleScale;
  final Splash3dModelController controller;

  final double topTitleClipProgress;
  final double bottomTitleClipProgress;
  final double backgroundShapeOpacity;

  @override
  Widget build(BuildContext context) {
    final appSize = MediaQuery.of(context).size;
    final l10n = context.l10n;

    final textScale = appSize.aspectRatio > 1 ? 1.15 : .8;
    return Container(
      color: backgroundColor,
      child: Stack(
        children: [
          if (controller.initialized) ...{
            BlendMask(
              blendMode: BlendMode.hardLight,
              opacity: backgroundShapeOpacity,
              child: Splash3dModel(
                controller: controller,
                pageIndex: pageIndex * 2 + 0,
              ),
            ),
            Align(
              alignment: Alignment.bottomCenter,
              child: SizedBox(
                height: appSize.height * (appSize.aspectRatio > 1 ? 1 : .80),
                child: Image(fit: BoxFit.fitHeight, image: image!),
              ),
            ),
            BlendMask(
              blendMode: BlendMode.exclusion,
              child: Splash3dModel(
                controller: controller,
                pageIndex: pageIndex * 2 + 1,
              ),
            ),
            Align(
              alignment: Alignment.topRight,
              child: BlendMask(
                blendMode: BlendMode.difference,
                child: Padding(
                  padding: const EdgeInsets.fromLTRB(0, 60, 8, 4),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    // mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      _buildClippedText(
                        text: topTitle,
                        progress: topTitleClipProgress,
                        fontSize: 72 * textScale,
                        yOffset: 0,
                        spacing: 6,
                        height: 1,
                      ),
                      _buildClippedText(
                        text: bottomTitle,
                        progress: bottomTitleClipProgress,
                        fontSize: 60 * textScale * bottomTitleScale,
                        yOffset: 0,
                        spacing: 8,
                        height: 1,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            BlendMask(
              opacity: 0.24,
              blendMode: BlendMode.colorDodge,
              child: Image(
                width: appSize.width,
                fit: BoxFit.none,
                image: const AssetImage(
                  AppAssets.noise,
                ),
              ),
            ),
          } else ...{
            Center(
              child: Text(
                l10n.on_board_atsign,
                style: const TextStyle(
                  // package: OnBoarding.pkg,
                  letterSpacing: 1.1,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                  fontSize: 14,
                ),
              ),
            ),
          },
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 200,
              decoration: const BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                  colors: [Color(0x00000000), Color(0x99000000)],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  ClipRect _buildClippedText({
    String? text,
    double? progress,
    double? fontSize,
    double? yOffset,
    double? spacing,
    double? height,
  }) {
    return ClipRect(
      clipper: _3dTextClipper(height: progress! * fontSize!, y: yOffset!),
      child: Text(
        text!,
        textAlign: TextAlign.right,
        style: TextStyle(
          fontSize: fontSize, //65,
          fontWeight: FontWeight.bold,
          fontFamily: 'Staatliches',
          letterSpacing: spacing,
          height: height,
          color: Colors.white,
        ),
      ),
    );
  }
}

// ignore: camel_case_types
class _3dTextClipper extends CustomClipper<Rect> {
  _3dTextClipper({this.y = 0, this.height = 0});

  final double y;
  final double height;

  @override
  Rect getClip(Size size) {
    return Rect.fromLTWH(0, height + y, size.width, size.height - height);
  }

  @override
  bool shouldReclip(_3dTextClipper oldClipper) {
    return true;
  }
}
