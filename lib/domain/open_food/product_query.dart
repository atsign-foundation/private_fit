import 'package:openfoodfacts/model/ProductList.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:openfoodfacts/utils/CountryHelper.dart';
import 'package:openfoodfacts/utils/OpenFoodAPIConfiguration.dart';

abstract class ProductQuery {
  /// Returns the global language for API queries.
  static OpenFoodFactsLanguage? getLanguage() {
    final languages =
        OpenFoodAPIConfiguration.globalLanguages ?? <OpenFoodFactsLanguage>[];
    if (languages.isEmpty) {
      return null;
    }
    return languages[0];
  }

  /// Sets the global language for API queries.
  static void setLanguage(final String languageCode) {
    final language = LanguageHelper.fromJson(languageCode);
    OpenFoodAPIConfiguration.globalLanguages = <OpenFoodFactsLanguage>[
      language,
    ];
  }

  /// Returns the global country for API queries?
  static OpenFoodFactsCountry? getCountry() =>
      OpenFoodAPIConfiguration.globalCountry;

  /// Sets the global country for API queries.
  static void setCountry(final String? isoCode) =>
      OpenFoodAPIConfiguration.globalCountry = CountryHelper.fromJson(isoCode);

  // static const String _UUID_NAME = 'UUID_NAME_REV_1';

  static User getUser() =>
      OpenFoodAPIConfiguration.globalUser ??
      const User(
        userId: 'private fit',
        password: 'fliptheinternet',
        comment: 'Test user for project privatefit (atsign.com)',
      );

  static bool isLoggedIn() => OpenFoodAPIConfiguration.globalUser != null;

  static List<ProductField> get fields => <ProductField>[
        ProductField.NAME,
        ProductField.BRANDS,
        ProductField.BARCODE,
        ProductField.NUTRISCORE,
        ProductField.FRONT_IMAGE,
        ProductField.IMAGE_FRONT_SMALL_URL,
        ProductField.IMAGE_FRONT_URL,
        ProductField.IMAGE_INGREDIENTS_URL,
        ProductField.IMAGE_NUTRITION_URL,
        ProductField.IMAGE_PACKAGING_URL,
        ProductField.SELECTED_IMAGE,
        ProductField.QUANTITY,
        ProductField.SERVING_SIZE,
        ProductField.STORES,
        ProductField.PACKAGING_QUANTITY,
        ProductField.NUTRIMENTS,
        ProductField.NUTRIENT_LEVELS,
        ProductField.NUTRIMENT_ENERGY_UNIT,
        ProductField.ADDITIVES,
        ProductField.INGREDIENTS_ANALYSIS_TAGS,
        ProductField.INGREDIENTS_TEXT,
        ProductField.LABELS_TAGS,
        ProductField.LABELS_TAGS_IN_LANGUAGES,
        ProductField.ENVIRONMENT_IMPACT_LEVELS,
        ProductField.COMPARED_TO_CATEGORY,
        ProductField.CATEGORIES_TAGS,
        ProductField.CATEGORIES_TAGS_IN_LANGUAGES,
        ProductField.LANGUAGE,
        ProductField.ATTRIBUTE_GROUPS,
        ProductField.STATES_TAGS,
        ProductField.ECOSCORE_DATA,
        ProductField.ECOSCORE_GRADE,
        ProductField.ECOSCORE_SCORE,
        ProductField.KNOWLEDGE_PANELS,
      ];

  Future<SearchResult> getSearchResult();

  ProductList getProductList();
}
