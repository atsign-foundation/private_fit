import 'package:flutter_dotenv/flutter_dotenv.dart';

class Constants {
  // static const String WEBSITE_URL = 'https://staging.atsign.wtf/';
  static const String websiteUrl = 'https://atsign.com/';

  // for local server
  // static const String ROOT_DOMAIN = 'vip.ve.atsign.zone';
  // for staging server
  // static const String ROOT_DOMAIN = 'root.atsign.wtf';
  // for production server
  static const String rootDomain = 'root.atsign.org';

  static const String termsAndConditions =
      'https://atsign.com/terms-conditions/';
  // static const String PRIVACY_POLICY = 'https://atsign.com/privacy-policy/';
  static const String privacyAndPolicy =
      'https://atsign.com/apps/atmosphere/atmosphere-privacy/';

  static const int timeOut = 60000;

  // static String mapKey = dotenv.get('MAP_KEY');
  static String appApiKey = dotenv.get('API_KEY');

  static String appNamespace = dotenv.get('NAMESPACE'); //'22fine90';
  static String syncRegex =
      '''(.$appNamespace|atconnections|[0-9a-f]{8}(?:-[0-9a-f]{4}){3}-[0-9a-f]{12})''';

  static const int maxTTL = 10080 * 60;
  static const bool isDedicated = true;

  // Onboarding API key - requires different key for production
  // static String onboardApiKey = '477b-876u-bcez-c42z-6a3d';

  static Future<void> load() => dotenv.load();
}
