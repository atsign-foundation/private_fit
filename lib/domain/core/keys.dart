// 🌎 Project imports:
import 'package:private_fit/domain/core/key_model.dart';
import 'package:private_fit/domain/core/value_model.dart';

class Keys {
  /// Admin key
  static final PassKey adminKey = PassKey(
    key: 'admin',
    value: Value(
      type: 'admin',
    ),
  );

  /// Profile picture key
  static final PassKey profilePicKey = PassKey(
    key: 'profilepic',
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      isHidden: true,
      labelName: 'Profile pic',
    ),
  );

  /// User name key
  static final PassKey nameKey = PassKey(
    key: 'name',
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'Username',
      isHidden: true,
    ),
  );

  /// User name key
  static final PassKey menstrualDataKey = PassKey(
    key: 'menstrual',
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'period',
      isHidden: true,
      type: 'menstrual',
    ),
  );

  /// Product information key
  static final PassKey productNutritionDataKey = PassKey(
    key: 'nutritionKey',
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'nutrition',
      isHidden: true,
      type: 'nutrition',
    ),
  );

  /// Master image key
  static final PassKey masterImgKey = PassKey(
    key: 'masterpassimg',
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'Master password image',
      isHidden: true,
    ),
  );

  /// Password key
  static final PassKey passwordKey = PassKey(
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'Password',
      isHidden: true,
    ),
  );

  /// Cards key
  static final PassKey cardsKey = PassKey(
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'Cards',
      isHidden: true,
    ),
  );

  /// Images key
  static final PassKey imagesKey = PassKey(
    isPublic: false,
    isHidden: true,
    createdDate: DateTime.now(),
    value: Value(
      labelName: 'Images',
      isHidden: true,
    ),
  );

  /// Fingerprint key
  static final PassKey fingerprintKey = PassKey(
    isPublic: false,
    key: 'fingerprint',
    createdDate: DateTime.now(),
    isHidden: true,
    value: Value(
      labelName: 'Fingerprint',
      isHidden: true,
    ),
  );
}
