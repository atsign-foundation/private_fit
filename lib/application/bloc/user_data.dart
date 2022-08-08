import 'dart:typed_data';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:flutter/foundation.dart';
import 'package:private_fit/domain/on_boarding/admin_model.dart';
import 'package:private_fit/domain/on_boarding/report_model.dart';
import 'package:private_fit/shared/constants.dart';

class UserData extends ChangeNotifier {
  final AtSignLogger _logger = AtSignLogger('User Data');

  bool _isAdmin = false;

  bool get isAdmin => _isAdmin;

  set isAdmin(bool value) {
    _logger.finer('isAdmin: $value');
    _isAdmin = value;
    notifyListeners();
  }

  bool get isSuperAdmin =>
      _currentAtSign!.replaceAll('@', '') == Constants.reportAtsign;

  bool _isInitialSync = false;

  bool get isInitialSync => _isInitialSync;

  set isInitialSync(bool _isInitSync) {
    _logger.finer('Setting isInitialSync: $_isInitSync');
    _isInitialSync = _isInitSync;
    notifyListeners();
  }

  bool _authenticated = false;

  bool get authenticated => _authenticated;

  set authenticated(bool _auth) {
    _logger.finer('Setting user auth status to $_auth');
    _authenticated = _auth;
    notifyListeners();
  }

  bool _fingerprintAuthEnabled = false;

  bool get fingerprintAuthEnabled => _fingerprintAuthEnabled;

  set fingerprintAuthEnabled(bool _auth) {
    _logger.finer('Setting fingerprint auth status to $_auth');
    _fingerprintAuthEnabled = _auth;
    notifyListeners();
  }

  String? _userName;

  String? get userName => _userName;

  set userName(String? value) {
    _logger.finer('Setting userName to $value');
    _userName = value;
    notifyListeners();
  }

  /// Onboarding preferences
  AtClientPreference? _atOnboardingPreference;

  /// Get onboarding preferences
  AtClientPreference get atOnboardingPreference => _atOnboardingPreference!;

  /// Set onboarding preferences
  set atOnboardingPreference(AtClientPreference value) {
    _logger.finer('Setting onboarding preferences...');
    _atOnboardingPreference = value;
    notifyListeners();
  }

  bool _networkConnected = false;
  bool get networkConnected => _networkConnected;
  set networkConnected(bool value) {
    _networkConnected = value;
    notifyListeners();
  }

  /// Current @sign
  String? _currentAtSign;

  /// Get current @sign
  String get currentAtSign => _currentAtSign ?? '';

  /// Set current @sign
  set currentAtSign(String value) {
    _logger.finer('Setting current @sign to $value');
    _currentAtSign = value;
    notifyListeners();
  }

  String? _name;

  String get name => _name!;

  set name(String value) {
    _logger.finer('Setting current @sign name to $value');
    _name = value;
    notifyListeners();
  }

  /// Current ProfilePic
  Uint8List _currentProfilePic = Uint8List(0);

  /// Get current ProfilePic
  Uint8List get currentProfilePic => _currentProfilePic;

  /// Set current ProfilePic
  set currentProfilePic(Uint8List value) {
    _logger.finer('Setting current profile pic');
    _currentProfilePic = value;
    notifyListeners();
  }

  /// Master image
  Uint8List _masterImage = Uint8List(0);

  /// Get master image
  Uint8List get masterImage => _masterImage;

  /// Set master image
  set masterImage(Uint8List value) {
    _logger.finer('Setting current master image');
    _masterImage = value;
    notifyListeners();
  }

  /// List of reports
  List<Report> _reports = <Report>[];

  /// Get the list of _reports
  List<Report> get reports => _reports;

  /// Set the list of _reports
  set reports(List<Report> value) {
    _logger.finer('Total reports: ${value.length}');
    _reports = value;
    notifyListeners();
  }

  void disposeUser() {
    _reports.clear();

    _masterImage = Uint8List(0);
    _currentProfilePic = Uint8List(0);
    _currentAtSign = null;
    _name = null;
    _isAdmin = false;

    notifyListeners();
  }

  List<Admin> _admins = <Admin>[];

  List<Admin> get admins => _admins;

  set admins(List<Admin> value) {
    _admins = value;
    notifyListeners();
  }
}
