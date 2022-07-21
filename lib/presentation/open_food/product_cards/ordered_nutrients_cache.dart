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
}
