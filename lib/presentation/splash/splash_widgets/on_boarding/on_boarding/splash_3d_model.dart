import 'package:flutter/material.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/splash_3d_model_controller.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/wavefront_parser.dart';

class Splash3dModel extends StatelessWidget {
  const Splash3dModel({this.controller, this.pageIndex = 0, Key? key})
      : super(key: key);

  final Splash3dModelController? controller;
  final int pageIndex;
  @override
  Widget build(BuildContext context) {
    return Stack(
      fit: StackFit.expand,
      children: controller!.meshInstances.isNotEmpty
          ? <int>[0, 1, 2, 3, 4, 5].map((int index) {
              return CustomPaint(
                painter: MeshCustomPainter(
                  controller!.meshInstances[pageIndex * 6 + index],
                ),
              );
            }).toList()
          : [],
    );
  }
}
