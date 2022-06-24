import 'dart:typed_data';

import 'package:camera/camera.dart';
import 'package:flutter/material.dart';
import 'package:google_mlkit_barcode_scanning/google_mlkit_barcode_scanning.dart';

/// Abstract getter of Camera Image, for barcode scan.
///
/// Use CameraController with imageFormatGroup: ImageFormatGroup.yuv420
abstract class AbstractCameraImageGetter {
  AbstractCameraImageGetter(this.cameraImage, this.cameraDescription);

  final CameraImage cameraImage;
  final CameraDescription cameraDescription;

  InputImage getInputImage() {
    final imageRotation = InputImageRotationValue.fromRawValue(
            cameraDescription.sensorOrientation) ??
        InputImageRotation.rotation0deg;

    final inputImageFormat = InputImageFormatValue.fromRawValue(
      int.parse(cameraImage.format.raw.toString()),
    )!;

    final planeData = getPlaneMetaData();

    final inputImageData = InputImageData(
      size: getSize(),
      imageRotation: imageRotation,
      inputImageFormat: inputImageFormat,
      planeData: planeData,
    );

    return InputImage.fromBytes(
      bytes: getBytes(),
      inputImageData: inputImageData,
    );
  }

  @protected
  Size getSize();

  @protected
  Uint8List getBytes();

  @protected
  List<InputImagePlaneMetadata> getPlaneMetaData();
}
