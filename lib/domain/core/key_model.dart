// 📦 Package imports:
import 'package:at_commons/at_commons.dart';
// 🌎 Project imports:
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/shared/constants.dart';

class PassKey {
  PassKey({
    this.sharedBy,
    this.sharedWith,
    this.isBinary,
    this.isCached,
    this.isHidden,
    this.isPublic,
    this.isRef,
    this.isEncrypted,
    this.namespaceAware,
    this.createdDate,
    this.ccd,
    this.ttb,
    this.ttl,
    this.ttr,
    this.key,
    this.namespace,
    this.value,
  }) {
    isBinary ??= false;
    isCached ??= false;
    isHidden ??= false;
    isPublic ??= false;
    isRef ??= false;
    createdDate ??= DateTime.now();
    namespace ??= Constants.appNamespace;
    isEncrypted ??= false;
    namespaceAware = namespaceAware ?? true;
    ccd ??= false;

    value ??= Value();
  }

  factory PassKey.fromAtKey(AtKey atKey) {
    return PassKey(
      key: atKey.key,
      sharedBy: atKey.sharedBy,
      sharedWith: atKey.sharedWith,
      ttb: atKey.metadata?.ttb,
      ttl: atKey.metadata?.ttl,
      ttr: atKey.metadata?.ttr,
      isBinary: atKey.metadata?.isBinary,
      isCached: atKey.metadata?.isCached,
      isHidden: atKey.metadata?.isHidden,
      isPublic: atKey.metadata?.isPublic,
      isEncrypted: atKey.metadata?.isEncrypted,
      namespaceAware: atKey.metadata?.namespaceAware,
      namespace: atKey.namespace,
      createdDate: atKey.metadata?.createdAt,
      ccd: atKey.metadata?.ccd,
      isRef: atKey.isRef,
    );
  }

  factory PassKey.fromJson(Map<String, dynamic> parsedJson) {
    return PassKey(
      value: Value.fromJson(parsedJson['value'] as Map<String, dynamic>),
      key: parsedJson['key'] as String,
      ttb: parsedJson['ttb'] as int,
      ttl: parsedJson['ttl'] as int,
      ttr: parsedJson['ttr'] as int,
      sharedBy: parsedJson['sharedBy'] as String,
      sharedWith: parsedJson['sharedWith'] as String,
      isPublic: parsedJson['isPublic'] as bool,
      isCached: parsedJson['isCached'] as bool,
      isHidden: parsedJson['isHidden'] as bool,
      isBinary: parsedJson['isBinary'] as bool,
      isEncrypted: parsedJson['isEncrypted'] as bool,
      namespaceAware: parsedJson['namespaceAware'] as bool,
      namespace: parsedJson['namespace'] as String,
      createdDate: parsedJson['createdDate'] as DateTime,
      ccd: parsedJson['ccd'] as bool,
      isRef: parsedJson['isRef'] as bool,
    );
  }
  String? key;
  Value? value = Value();
  String? sharedWith;
  String? sharedBy;
  String? namespace = Constants.appNamespace;
  bool? isPublic = false;
  bool? isCached = false;
  bool? isHidden = false;
  bool? isBinary = false;
  bool? isRef = false;
  bool? ccd = false;
  bool? isEncrypted = false;
  bool? namespaceAware = true;
  DateTime? createdDate = DateTime.now();
  int? ttb;
  int? ttl;
  int? ttr;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'key': key,
      'value': value?.toJson(),
      'isPublic': isPublic,
      'isCached': isCached,
      'isHidden': isHidden,
      'isBinary': isBinary,
      'isEncrypted': isEncrypted,
      'ccd': ccd,
      'isRef': isRef,
      'sharedWith': sharedWith,
      'sharedBy': sharedBy,
      'ttb': ttb,
      'ttl': ttl,
      'ttr': ttr,
      'createdDate': createdDate,
      'namespace': namespace,
      'namespaceAware': namespaceAware
    };
  }

  AtKey toAtKey() {
    return AtKey()
      ..key = key
      ..isRef = isRef ?? false
      ..sharedBy = sharedBy
      ..sharedWith = sharedWith
      ..namespace = namespace ?? Constants.appNamespace
      ..metadata = (Metadata()
        ..ccd = ccd ?? false
        ..createdAt = createdDate ?? DateTime.now()
        ..isPublic = isPublic ?? false
        ..isHidden = isHidden ?? false
        ..isCached = isCached ?? false
        ..isEncrypted = isEncrypted ?? false
        ..isBinary = isBinary ?? false
        ..namespaceAware = namespaceAware ?? true
        ..ttl = ttl
        ..ttb = ttb
        ..ttr = ttr);
  }

  @override
  String toString() {
    // ignore: lines_longer_than_80_chars
    return 'PassKey{key: $key ,value: ${value.toString()},isPublic: $isPublic, isCached: $isCached, isHidden: $isHidden,isBinary: $isBinary, namespaceAware : $namespaceAware , isEncrypted : $isEncrypted, ttl: $ttl, ttb: $ttb, ttr: $ttr ,sharedWith : $sharedWith, sharedBy : $sharedBy, isref : $isRef}';
  }
}
