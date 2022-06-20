// ignore_for_file: prefer_final_locals, flutter_style_todos, lines_longer_than_80_chars

import 'dart:async';
import 'dart:typed_data';
import 'dart:ui' as ui;

import 'package:flutter/material.dart';
import 'package:path/path.dart' as path;
import 'package:private_fit/presentation/splash/splash_widgets/app_assets.dart';
import 'package:vector_math/vector_math.dart' as vec32;

class OBJLoaderMaterial {
  String? name;

  Color? diffuseColor;

  String? texturePath;

  ui.Image? texture;
}

class OBJLoaderFace {
  OBJLoaderFace()
      : _positions = List<vec32.Vector3>.filled(3, vec32.Vector3.zero()),
        _normals = List<vec32.Vector3>.filled(3, vec32.Vector3.zero()),
        _uvs = List<vec32.Vector2>.filled(3, vec32.Vector2.zero()),
        materialName = '';

  List<vec32.Vector3> get positions => _positions;
  List<vec32.Vector3> get normals => _normals!;
  List<vec32.Vector2> get uvs => _uvs!;
  final List<vec32.Vector3> _positions;
  final List<vec32.Vector3>? _normals;
  final List<vec32.Vector2>? _uvs;
  String? materialName;
}

class OBJLoader {
  OBJLoader(this._bundle, this._basePath, this._objPath)
      : _faces = <OBJLoaderFace>[],
        _materials = <String, OBJLoaderMaterial>{};
  final AssetBundle _bundle;
  final String _basePath;
  final String _objPath;
  late String _mtlPath;

  late String _objSource;
  late String _mtlSource;

  late final List<OBJLoaderFace> _faces;
  final Map<String, OBJLoaderMaterial> _materials;

  Future<VertexMesh> parse() async {
    var p = path.join(_basePath, _objPath);
    await _bundle.loadString(p).then((value) async {
      _objSource = value;
      await _parseOBJFile();
    });
    p = path.join(_basePath, _mtlPath);
    await _bundle.loadString(p).then((value) async {
      _mtlSource = value;
      await _parseMTLFile().then((value) async {
        await _loadMTLTextures();
      });
    });

    return _buildVertexMesh();
  }

  Future<void> _parseOBJFile() async {
    var positions = <vec32.Vector3>[];
    var normals = <vec32.Vector3>[];
    var uvs = <vec32.Vector2>[];
    String currentMaterialName;
    // final face = OBJLoaderFace();

    final objLines = _objSource.split('\n');
    for (var line in objLines) {
      final face = OBJLoaderFace();

      line = line.replaceAll('\r', '');
      if (line.startsWith('v ')) {
        final args = line.split(' ');
        // args[0] = 'v' args[1..3] = position coords
        positions.add(
          vec32.Vector3(
            double.parse(args[1]),
            double.parse(args[2]),
            double.parse(args[3]),
          ),
        );
      } else if (line.startsWith('vn ')) {
        final args = line.split(' ');
        // args[0] = 'vn' args[1..3] = normal coords
        normals.add(
          vec32.Vector3(
            double.parse(args[1]),
            double.parse(args[2]),
            double.parse(args[3]),
          ),
        );
      } else if (line.startsWith('vt ')) {
        final args = line.split(' ');
        // args[0] = 'vt' args[1..2] = texture coords
        uvs.add(vec32.Vector2(double.parse(args[1]), double.parse(args[2])));
      } else if (line.startsWith('f ')) {
        final args = line.split(' ');

        // We only support loading meshs with triangulated faces
        assert(args.length == 4, 'if it has this legth');

        final v0 = args[1].split('/');
        final v1 = args[2].split('/');
        final v2 = args[3].split('/');

        face.positions[0] = positions[int.parse(v0[0]) - 1];
        face.positions[1] = positions[int.parse(v1[0]) - 1];
        face.positions[2] = positions[int.parse(v2[0]) - 1];

        if (normals.isNotEmpty) {
          face.normals[0] = normals[int.parse(v0[2]) - 1];
          face.normals[1] = normals[int.parse(v1[2]) - 1];
          face.normals[2] = normals[int.parse(v2[2]) - 1];
        } else {
          face.normals[0] =
              face.normals[1] = face.normals[2] = vec32.Vector3.zero();
        }

        if (uvs.isNotEmpty) {
          face.uvs[0] = uvs[int.parse(v0[1]) - 1];
          face.uvs[1] = uvs[int.parse(v1[1]) - 1];
          face.uvs[2] = uvs[int.parse(v2[1]) - 1];
        } else {
          face.uvs[0] = face.uvs[1] = face.uvs[2] = vec32.Vector2.zero();
        }

        _faces.add(face);
      } else if (line.startsWith('o ')) {
        // TODO: Load multiple objects
      } else if (line.startsWith('mtllib ')) {
        _mtlPath = line.split(' ')[1];
      } else if (line.startsWith('usemtl ')) {
        currentMaterialName = line.split(' ')[1];
        face.materialName = currentMaterialName;
        _faces.add(face);
      } else if (line.startsWith('s ')) {
        // TODO: Set scale value
      }
    }
  }

  Future<void> _parseMTLFile() async {
    final mtlLines = _mtlSource.split('\n');

    OBJLoaderMaterial? currentMaterial;

    for (var line in mtlLines) {
      line = line.replaceAll('\r', '');
      if (line.startsWith('newmtl ')) {
        if (currentMaterial != null) {
          _materials[currentMaterial.name!] = currentMaterial;
        }

        currentMaterial = OBJLoaderMaterial()..name = line.split(' ')[1];
      } else if (line.startsWith('Kd ')) {
        if (currentMaterial != null) {
          final args = line.split(' ');
          currentMaterial.diffuseColor = Color.fromARGB(
            255,
            (double.parse(args[1]) * 255).round(),
            (double.parse(args[2]) * 255).round(),
            (double.parse(args[3]) * 255).round(),
          );
        }
      } else if (line.startsWith('map_Kd ')) {
        if (currentMaterial != null) {
          final args = line.split(' ');
          currentMaterial.texturePath = args[1];
        }
      }
    }

    if (currentMaterial != null) {
      _materials[currentMaterial.name!] = currentMaterial;
    }
  }

  Future<void> _loadMTLTextures() async {
    var _imageFutures = <Future<void>>[];

    for (final mtl in _materials.values) {
      //todo the mtl export doesnt provide texture path
      // if (mtl.texturePath != null) {
      // print('loading texture: ${mtl.texturePath}');
      final c = Completer<void>();
      _imageFutures.add(c.future);
      const AssetImage(AppAssets.artist1)
          .resolve(ImageConfiguration.empty)
          .addListener(
        ImageStreamListener((ImageInfo info, bool _) {
          // print('loaded texture: ${mtl.texturePath}');
          mtl.texture = info.image;
          c.complete();
        }),
      );
      // }
    }

    await Future.wait(_imageFutures);
  }

  VertexMesh _buildVertexMesh() {
    // TODO(kzawadi): Improve mesh building algorithm by deduplicating vertices
    var positions = Float32List(_faces.length * 3 * 3);
    var normals = Float32List(_faces.length * 3 * 3);
    var uvs = Float32List(_faces.length * 3 * 2);
    var colors = Int32List(_faces.length * 3);
    var indices = Uint16List(_faces.length * 3);

    // TODO(kzawadi): Combine multiple material textures into one and offset uv's accordingly
    var texture = _materials.values.first.texture;

    for (var i = 0; i < _faces.length; ++i) {
      positions[i * 9 + 0] = _faces[i].positions[0].x;
      positions[i * 9 + 1] = _faces[i].positions[0].y;
      positions[i * 9 + 2] = _faces[i].positions[0].z;
      positions[i * 9 + 3] = _faces[i].positions[1].x;
      positions[i * 9 + 4] = _faces[i].positions[1].y;
      positions[i * 9 + 5] = _faces[i].positions[1].z;
      positions[i * 9 + 6] = _faces[i].positions[2].x;
      positions[i * 9 + 7] = _faces[i].positions[2].y;
      positions[i * 9 + 8] = _faces[i].positions[2].z;

      normals[i * 9 + 0] = _faces[i].normals[0].x;
      normals[i * 9 + 1] = _faces[i].normals[0].y;
      normals[i * 9 + 2] = _faces[i].normals[0].z;
      normals[i * 9 + 3] = _faces[i].normals[1].x;
      normals[i * 9 + 4] = _faces[i].normals[1].y;
      normals[i * 9 + 5] = _faces[i].normals[1].z;
      normals[i * 9 + 6] = _faces[i].normals[2].x;
      normals[i * 9 + 7] = _faces[i].normals[2].y;
      normals[i * 9 + 8] = _faces[i].normals[2].z;

      uvs[i * 6 + 0] = _faces[i].uvs[0].x;
      uvs[i * 6 + 1] = _faces[i].uvs[0].y;
      uvs[i * 6 + 2] = _faces[i].uvs[1].x;
      uvs[i * 6 + 3] = _faces[i].uvs[1].y;
      uvs[i * 6 + 4] = _faces[i].uvs[2].x;
      uvs[i * 6 + 5] = _faces[i].uvs[2].y;

      colors[i * 3 + 0] =
          _materials[_faces[i].materialName]?.diffuseColor?.value ?? 4278309437;
      colors[i * 3 + 1] =
          _materials[_faces[i].materialName]?.diffuseColor?.value ?? 4278309437;
      colors[i * 3 + 2] =
          _materials[_faces[i].materialName]?.diffuseColor?.value ?? 4278309437;

      indices[i * 3 + 0] = i * 3 + 0;
      indices[i * 3 + 1] = i * 3 + 1;
      indices[i * 3 + 2] = i * 3 + 2;
    }

    return VertexMesh()
      ..positions = positions
      ..normals = normals
      ..uvs = uvs
      ..colors = colors
      ..indices = indices
      ..texture = texture!;
  }
}

Future<VertexMesh> loadVertexMeshFromOBJAsset(
  BuildContext context,
  String basePath,
  String objpath,
  // String mtlPath,
) async {
  final bundle = DefaultAssetBundle.of(context);

  final loader = OBJLoader(bundle, basePath, objpath);

  return loader.parse();
}

class VertexMesh {
  VertexMesh();

  /// 3D local space position vertex data
  Float32List? positions;

  /// 3D local space normal vertex data
  Float32List? normals;

  /// 2D texture space uv vertex data
  Float32List? uvs;

  /// Material vertex color's
  Int32List? colors;

  /// Triangle indices
  Uint16List? indices;

  /// Material texture
  late ui.Image texture;

  int get vertexCount => positions!.length ~/ 3;

  // void log() {
  //   for (var i = 0; i < indices!.length; i += 3) {
  //     var x0 = positions![indices![i + 0] * 3 + 0];
  //     var y0 = positions![indices![i + 0] * 3 + 1];
  //     var z0 = positions![indices![i + 0] * 3 + 2];

  //     var x1 = positions![indices![i + 1] * 3 + 0];
  //     var y1 = positions![indices![i + 1] * 3 + 1];
  //     var z1 = positions![indices![i + 1] * 3 + 2];

  //     var x2 = positions![indices![i + 2] * 3 + 0];
  //     var y2 = positions![indices![i + 2] * 3 + 1];
  //     var z2 = positions![indices![i + 2] * 3 + 2];

  // ignore: prefer_interpolation_to_compose_strings
  // print(
  //   'f: {' +
  //       x0.toStringAsFixed(3) +
  //       ', ' +
  //       y0.toStringAsFixed(3) +
  //       ', ' +
  //       z0.toStringAsFixed(3) +
  //       '}, {' +
  //       x1.toStringAsFixed(3) +
  //       ', ' +
  //       y1.toStringAsFixed(3) +
  //       ', ' +
  //       z1.toStringAsFixed(3) +
  //       '}, {' +
  //       x2.toStringAsFixed(3) +
  //       ', ' +
  //       y2.toStringAsFixed(3) +
  //       ', ' +
  //       z2.toStringAsFixed(3) +
  //       '}',
  // );
  // }
  // }
}

class VertexMeshInstance {
  VertexMeshInstance(this._mesh) : _vertexCacheInvalid = true;

  final VertexMesh _mesh;

  /// Post transform draw ready vertices
  late ui.Vertices? _vertices;

  late vec32.Matrix4? _modelView;
  late vec32.Matrix4? _projection;

  bool _vertexCacheInvalid;

  void setTransform(vec32.Matrix4 modelView, vec32.Matrix4 projection) {
    _modelView = modelView;
    _projection = projection;
    _vertexCacheInvalid = true;
  }

  ui.Vertices get vertices {
    if (_vertexCacheInvalid) _cacheVertices();

    return _vertices!;
  }

  ui.Image get texture {
    return _mesh.texture;
  }

  void _cacheVertices() {
    // Create vertices from mesh data
    var transformedPositions = List<vec32.Vector4>.filled(
      _mesh.vertexCount,
      vec32.Vector4.random(), //todo
    ); // List<vec32.Vector4>(_mesh.vertexCount);
    var culledIndices = <int>[];

    final transform = _projection!.multiplied(_modelView!);

    // Transform vertices
    for (var i = 0; i < _mesh.vertexCount; ++i) {
      var position = vec32.Vector4(
        _mesh.positions![i * 3 + 0],
        _mesh.positions![i * 3 + 1],
        _mesh.positions![i * 3 + 2],
        1,
      );
      position = transform.transform(position);
      position.xyz /= position.w;

      transformedPositions[i] = position;
    }

    // Cull back faces
    for (var i = 0; i < _mesh.indices!.length; i += 3) {
      final a = transformedPositions[_mesh.indices![i + 0]].xyz;
      final b = transformedPositions[_mesh.indices![i + 1]].xyz;
      final c = transformedPositions[_mesh.indices![i + 2]].xyz;

      final ab = b - a;
      final ac = c - a;

      if (ab.cross(ac).z > 0.0) {
        // Insert the faces that are visible (vertices with ccw winding with a
        // normal pointed towards the camera)
        culledIndices
          ..add(_mesh.indices![i + 0])
          ..add(_mesh.indices![i + 1])
          ..add(_mesh.indices![i + 2]);
      }
    }

    // Depth sort
    {
      final tmpCulledIndices = List<int>.from(culledIndices);
      assert(
        tmpCulledIndices.length == culledIndices.length,
        'Just makin sure',
      );
      _triangleMergeSortSplit(
        transformedPositions,
        culledIndices,
        tmpCulledIndices,
        0,
        culledIndices.length ~/ 3,
      );
    }

    // Build 2d positions array
    var positions2D = Float32List(_mesh.vertexCount * 2);
    for (var i = 0; i < _mesh.vertexCount; ++i) {
      // Transformed positions are in ndc space, transform that into view coords
      positions2D[i * 2 + 0] = transformedPositions[i].x;
      positions2D[i * 2 + 1] = transformedPositions[i].y;
    }

    // Basic light
    var colors = Int32List(_mesh.vertexCount);
    // final normalTransform = _modelView!.getNormalMatrix();
    for (var i = 0; i < colors.length; ++i) {
      // final xn = normalTransform.transform(
      //   vec32.Vector3(
      //     _mesh.normals![i * 3 + 0],
      //     _mesh.normals![i * 3 + 1],
      //     _mesh.normals![i * 3 + 2],
      //   ).normalized(),
      // );

      //xn.dot(vec32.Vector3(0.5, 0.5, 1.0).normalized()).clamp(0.1, 1.0);
      const b = 1.0;

      colors[i] = 0xFF000000 |
          ((b * ((_mesh.colors![i] >> 16) & 0xFF)).floor() << 16) |
          ((b * ((_mesh.colors![i] >> 8) & 0xFF)).floor() << 8) |
          ((b * ((_mesh.colors![i] >> 0) & 0xFF)).floor() << 0);
    }

    _vertices = ui.Vertices.raw(
      VertexMode.triangles,
      positions2D,
      indices: Uint16List.fromList(culledIndices),
      textureCoordinates: _mesh.uvs,
      colors: colors,
    );

    _vertexCacheInvalid = false;
  }
}

class MeshCustomPainter extends CustomPainter {
  MeshCustomPainter(this._meshInstance);
  final VertexMeshInstance _meshInstance;
  @override
  void paint(ui.Canvas canvas, ui.Size size) {
    canvas
      ..scale(size.width * 0.5, size.height * 0.5)
      ..translate(1, 1)
      // Flip y
      ..scale(1, -1);

    // if (_meshInstance != null) {
    final paint = Paint()
      ..shader = ImageShader(
        _meshInstance.texture,
        TileMode.clamp,
        TileMode.clamp,
        Matrix4.identity()
            .scaled(
              1 / _meshInstance.texture.width,
              1 / _meshInstance.texture.height,
              1,
            )
            .storage,
      );
    // }

    canvas.drawVertices(_meshInstance.vertices, BlendMode.multiply, paint);
    // }
  }

  @override
  bool shouldRepaint(MeshCustomPainter oldDelegate) {
    // TODO: Do an actual state diff to check for repaint
    return true;
  }
}

bool _compareDepth(
  List<vec32.Vector4> positions,
  List<int> src,
  int indexA,
  int indexB,
) {
  double depthA, depthB;
  {
    final a = positions[src[indexA * 3 + 0]];
    final b = positions[src[indexA * 3 + 1]];
    final c = positions[src[indexA * 3 + 2]];

    depthA = (a.z + b.z + c.z) / 3.0;
  }
  {
    final a = positions[src[indexB * 3 + 0]];
    final b = positions[src[indexB * 3 + 1]];
    final c = positions[src[indexB * 3 + 2]];

    depthB = (a.z + b.z + c.z) / 3.0;
  }

  return depthA > depthB;
}

void _triangleMergeSortMerge(
  List<vec32.Vector4> positions,
  List<int> dst,
  List<int> src,
  int begin,
  int middle,
  int end,
) {
  assert(
    begin < middle && middle < end,
    '',
  );
  var j = begin, k = middle;
  for (var i = begin; i < end; ++i) {
    if (j < middle && (k >= end || _compareDepth(positions, src, j, k))) {
      dst[i * 3 + 0] = src[j * 3 + 0];
      dst[i * 3 + 1] = src[j * 3 + 1];
      dst[i * 3 + 2] = src[j * 3 + 2];
      ++j;
    } else {
      dst[i * 3 + 0] = src[k * 3 + 0];
      dst[i * 3 + 1] = src[k * 3 + 1];
      dst[i * 3 + 2] = src[k * 3 + 2];
      ++k;
    }
  }
}

void _triangleMergeSortSplit(
  List<vec32.Vector4> positions,
  List<int> dst,
  List<int> src,
  int begin,
  int end,
) {
  final count = end - begin;
  final middle = begin + count ~/ 2;
  if (count > 2) {
    _triangleMergeSortSplit(positions, src, dst, begin, middle);
    _triangleMergeSortSplit(positions, src, dst, middle, end);
    _triangleMergeSortMerge(positions, dst, src, begin, middle, end);
  }
}
