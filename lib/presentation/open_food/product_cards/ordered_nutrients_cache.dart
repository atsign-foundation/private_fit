import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/open_food/product_query.dart';

/// Helper class about getting and caching the back-end ordered nutrients.
class OrderedNutrientsCache {
  // OrderedNutrientsCache._();

  late OrderedNutrients? _orderedNutrients;
  OrderedNutrients get orderedNutrients => _orderedNutrients!;

  /// Returns a database/downloaded cache, or null if it failed.
  // static Future<OrderedNutrientsCache?> getCache(
  //   final BuildContext context,
  // ) async {
  //   final cache = OrderedNutrientsCache();
  //   // cache._orderedNutrients = await cache._get() ??
  //       // await LoadingDialog.run<OrderedNutrients>(
  //       //   context: context,
  //       //   future: cache._download(),
  //       // );
  //   if (cache._orderedNutrients == null) {
  //     // await LoadingDialog.error(context: context);
  //     return null;
  //   }
  //   return cache;
  // }

  // // /// Returns the ordered nutrients cached in the database.
  // Future<OrderedNutrients?> _get() async {
  //   final String? string = await _daoString.get(_getKey());
  //   if (string != null) {
  //     try {
  //       return OrderedNutrients.fromJson(
  //         jsonDecode(string) as Map<String, dynamic>,
  //       );
  //     } catch (e) {
  //       await _daoString.put(_getKey(), null);
  //     }
  //   }
  //   return null;
  // }

  /// Downloads the ordered nutrients and caches them in the database.
  Future<OrderedNutrients> download(BuildContext context) async {
    final string = await OpenFoodAPIClient.getOrderedNutrientsJsonString(
      country: ProductQuery.getCountry()!,
      language: ProductQuery.getLanguage()!,
    );
    final result = OrderedNutrients.fromJson(
      jsonDecode(string) as Map<String, dynamic>,
    );
    // await _daoString.put(_getKey(), string);
    return result;
  }

  /// Clears the cache.
  ///
  /// Typical use case: when it's time to refresh the cached data.
  // Future<void> clear() async => _daoString.put(_getKey(), null);

  /// Database key.
  // String _getKey() {
  //   final OpenFoodFactsCountry country = ProductQuery.getCountry()!;
  //   final OpenFoodFactsLanguage language = ProductQuery.getLanguage()!;
  //   return 'nutrients.pl'
  //       '/${country.iso2Code}'
  //       '/${language.code}'
  //       '/${OpenFoodAPIConfiguration.globalQueryType}';
  // }
}
