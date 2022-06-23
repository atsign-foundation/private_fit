import 'dart:math' as math;
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:private_fit/presentation/splash/splash_widgets/app_assets.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/wavefront_parser.dart';

import 'package:vector_math/vector_math.dart' as vec32;

// import 'package:shared/ui/widget_model.dart';

// import 'main.dart';

class Splash3dModelController extends ChangeNotifier {
  vec32.Matrix4? matProj;
  vec32.Matrix4? matView;

  late List<vec32.Vector3>? _angularVelocities;
  double _cameraOffset = 0;
  late List<vec32.Vector3>? _constantAngularVelocities;
  double? _lastTime;
  late List<vec32.Vector3>? _linearVelocities;
  late VertexMesh? _meshCube;
  late List<VertexMeshInstance>? _meshInstances;
  late VertexMesh? _meshStar;
  late VertexMesh? _meshTorus;
  late List<vec32.Vector3>? _positions;
  late math.Random? _rng;
  late List<vec32.Quaternion>? _rotations;
  late List<vec32.Vector3>? _scales;
  double _targetCameraOffset = 0;
  Ticker? _ticker;

  Future<void> init(BuildContext context) async {
    final appSize = MediaQuery.of(context).size;
    _setCamera(0);
    setView(appSize);

    _rng = math.Random.secure();

    await _loadMeshs(context);
  }

  bool get initialized => _ticker != null;

  List<VertexMeshInstance> get meshInstances => _meshInstances!;

  // ignore: avoid_setters_without_getters
  set cameraOffset(double offset) => _targetCameraOffset = offset;

  void triggerTap(BuildContext context, Offset position, int page) {
    // Convert position into ndc coords then into world space coords to compare
    // with the meshs position

    // Calculate world space (0, 0, 0) in ndc space
    var cameraZ = 0.0;
    {
      final camNDC = matProj!.multiplied(matView!).transform(
            vec32.Vector4(
              0,
              0,
              -2,
              1,
            ),
          );
      //todo a very sketch fix
      if (camNDC.w != 0.0) {
        camNDC
          ..x /= camNDC.w
          ..y /= camNDC.w
          ..z /= camNDC.w;
      }
      cameraZ = camNDC.z;
    }

    final appSize = MediaQuery.of(context).size;
    final ndc = vec32.Vector4(
      position.dx / appSize.width * 2.0 - 1.0,
      (position.dy / appSize.height * 2.0 - 1.0) * -1.0,
      cameraZ,
      1,
    );

    final matrix = vec32.Matrix4.inverted(matProj!.multiplied(matView!));
    final world = matrix.transform(ndc);
    if (world.w != 0.0) {
      world
        ..x /= world.w
        ..y /= world.w
        ..z /= world.w;
    }
    // print(world);

    // Apply forces to objects
    for (var i = page * 12; i < page * 12 + 12; ++i) {
      final force =
          _positions![i] - vec32.Vector3(world.x, world.y, _positions![i].z);
      final tangentForce = force.cross(
        vec32.Vector3(
          0,
          0,
          -1,
        ),
      );
      _linearVelocities![i] +=
          force.normalized() * (8.0 / force.length).clamp(0.0, 24.0);
      _angularVelocities![i] += tangentForce.normalized() * 4.0;
    }
  }

  void setView(Size size) {
    matProj = vec32.makePerspectiveMatrix(
      math.pi / 2.0,
      size.width / size.height,
      0.01,
      100,
    );
  }

  Future<void> _loadMeshs(BuildContext context) async {
    _meshTorus = await loadVertexMeshFromOBJAsset(
      context,
      AppAssets.basePath,
      'torus.obj',
    );
    // ignore: use_build_context_synchronously
    _meshStar = await loadVertexMeshFromOBJAsset(
      context,
      AppAssets.basePath,
      'star.obj',
    );
    // ignore: use_build_context_synchronously
    _meshCube = await loadVertexMeshFromOBJAsset(
      context,
      AppAssets.basePath,
      'cube.obj',
    );
    _ticker = Ticker(_handleTick);
    _initInstances();

    await _ticker!.start();
  }

  void _initInstances() {
    _meshInstances = [];
    _positions = [];
    _rotations = [];
    _scales = [];

    _linearVelocities = [];
    _angularVelocities = [];
    _constantAngularVelocities = [];
    for (var i = 0; i < 36; ++i) {
      VertexMesh mesh;
      if (i < 12) {
        mesh = _meshTorus!;
      } else if (i < 24) {
        mesh = _meshStar!;
      } else {
        mesh = _meshCube!;
      }
      _meshInstances!.add(VertexMeshInstance(mesh));

      _positions!.add(vec32.Vector3.zero());
      _rotations!.add(vec32.Quaternion.identity());
      _scales!.add(vec32.Vector3.all(1));

      _linearVelocities!.add(vec32.Vector3.zero());
      _angularVelocities!.add(vec32.Vector3.zero());
      _constantAngularVelocities!.add(vec32.Vector3.zero());
    }

    // Set initial values
    for (final p in _positions!) {
      p
        ..x = _rng!.nextDouble() * 8 - 4
        ..y = _rng!.nextDouble() * 28 - 19
        ..z = _rng!.nextDouble() * 4 - 4;
    }
    // Distribute better
    for (var i = 0; i < 200; ++i) {
      for (var j = 0; j < _positions!.length; ++j) {
        for (var k = j + 1; k < _positions!.length; ++k) {
          final p0 = _positions![j];
          final p1 = _positions![k];
          final p0p1 = p1 - p0;
          final dist = p0p1.xy.length;
          if (dist < 5.0) {
            // Push both objects in a random direction
            final norm = vec32.Vector3(
              _rng!.nextDouble() * 2 - 1,
              _rng!.nextDouble() * 2 - 1,
              0,
            ).normalized();

            p0.add(-norm * 0.2);
            p1.add(norm * 0.2);

            // Clamp values
            p0.x = p0.x.clamp(-5.0, 5.0);
            p1.x = p1.x.clamp(-5.0, 5.0);
          }
        }
      }
    }

    for (final quaternion in _rotations!) {
      quaternion.setAxisAngle(
        vec32.Vector3(
          _rng!.nextDouble() * 2.0 - 1.0,
          _rng!.nextDouble() * 2.0 - 1.0,
          _rng!.nextDouble() * 2.0 - 1.0,
        ),
        _rng!.nextDouble() * math.pi * 2.0,
      );
    }

    for (final vel in _constantAngularVelocities!) {
      vel
        ..x = _rng!.nextDouble() * 1.0 - 0.5
        ..y = _rng!.nextDouble() * 1.0 - 0.5
        ..z = _rng!.nextDouble() * 1.0 - 0.5;
    }

    _setTransform();
  }

  void _setCamera(double xOffset) {
    matView = vec32.makeViewMatrix(
      vec32.Vector3(-xOffset, 0, 5.2),
      vec32.Vector3(-xOffset, 0, 0),
      vec32.Vector3(0, 1, 0),
    );
  }

  void _setTransform() {
    for (var i = 0; i < _meshInstances!.length; ++i) {
      final meshInstance = _meshInstances![i];
      final matModel =
          vec32.Matrix4.compose(_positions![i], _rotations![i], _scales![i]);

      meshInstance.setTransform(matView!.multiplied(matModel), matProj!);
    }

    notifyListeners();
  }

  void _handleTick(Duration duration) {
    final time = duration.inMicroseconds.toDouble() * 1e-6;
    _lastTime ??= time;
    final dt = time - _lastTime!;
    _lastTime = time;

    const kDrag = 0.2;

    for (var i = 0; i < _meshInstances!.length; ++i) {
      // Apply drag (for a correct interaction we would
      // also multiply by the area of the
      // object tangent to the velocity direction
      // but thats hard to calculate
      //for arbitrary 3D shapes and we don't care that much here)
      final lvLength = _linearVelocities![i].length;
      if (lvLength.compareTo(0.0) != 0) {
        _linearVelocities![i] -=
            _linearVelocities![i].normalized() * 0.5 * kDrag * lvLength;
      }
      final avLength = _angularVelocities![i].length;
      if (avLength.compareTo(0.0) != 0) {
        _angularVelocities![i] -=
            _angularVelocities![i].normalized() * 0.5 * kDrag * avLength;
      }
      // Integrate velocity factors
      _positions![i].y += 1.0 * dt;
      _positions![i] += _linearVelocities![i] * dt;
      // Integrate theangular velocity using the quaternion integration equation
      _rotations![i] = quaternionExponent(
            vec32.Quaternion(
              (_angularVelocities![i].x + _constantAngularVelocities![i].x) *
                  0.5 *
                  dt,
              (_angularVelocities![i].y + _constantAngularVelocities![i].y) *
                  0.5 *
                  dt,
              (_angularVelocities![i].z + _constantAngularVelocities![i].z) *
                  0.5 *
                  dt,
              0,
            ),
          ) *
          _rotations![i];
      if (_positions![i].y >= 16.0) {
        _positions![i].y = -16.0;
      }
    }

    // Update camera
    _cameraOffset += (_targetCameraOffset - _cameraOffset) * 4 * dt;
    _setCamera(_cameraOffset);

    _setTransform();
  }
}

vec32.Quaternion quaternionExponent(vec32.Quaternion quaternion) {
  final ew = math.exp(quaternion.w);
  final v = vec32.Vector3(quaternion.x, quaternion.y, quaternion.z);
  final vlength = v.length;
  final cosv = math.cos(vlength);
  final sinv = math.sin(vlength);

  final w = ew * cosv;

  if (vlength.compareTo(0) == 0) {
    return vec32.Quaternion(0, 0, 0, w);
  }

  final x = ew * v.x / vlength * sinv;
  final y = ew * v.y / vlength * sinv;
  final z = ew * v.z / vlength * sinv;

  return vec32.Quaternion(x, y, z, w);
}
