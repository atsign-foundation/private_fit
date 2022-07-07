// import 'package:freezed_annotation/freezed_annotation.dart';

// part 'value_model.freezed.dart';

// @freezed
// class Value with _$Value {
//   const factory Value({
//     // required UniqueId id,
//     String? labelName,
//     dynamic value,
//     String? type,
//     @Default(DateTime.now) String createdDate,
//     @Default(false) bool? isHidden,
//   }) = _Value;

//   factory Value.fromJson(Map<String, dynamic> json) => _$ValueFromJson(json);
// }

class Value {
  Value(
      {this.value,
      this.type,
      this.createdDate,
      this.labelName,
      this.isHidden}) {
    createdDate = createdDate ?? DateTime.now().toString();
    isHidden = isHidden ?? false;
  }

  factory Value.fromJson(Map<String, dynamic> parsedJson) {
    return Value(
      labelName: parsedJson['labelName'] as String,
      value: parsedJson['value'] as dynamic,
      type: parsedJson['type'] as String,
      createdDate: parsedJson['createdDate'] as String,
      isHidden: parsedJson['isHidden'] as bool,
    );
  }
  String? labelName;
  dynamic value;
  String? type;
  String? createdDate = DateTime.now().toString();
  bool? isHidden = false;

  Map<String, dynamic> toJson() {
    return <String, dynamic>{
      'labelName': labelName,
      'value': value,
      'type': type,
      'createdDate': createdDate,
      'isHidden': isHidden,
    };
  }

  @override
  String toString() {
    return 'Value{labelName: $labelName, value: $value, type: $type, createdDate: $createdDate, isHidden: $isHidden}';
  }
}
