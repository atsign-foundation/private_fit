import 'dart:async';

import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/infrastructure/open_food_facts/open_food_services.dart';
import 'package:private_fit/infrastructure/open_food_facts/product_query.dart';

class BarcodeProductQuery {
  BarcodeProductQuery({
    required this.barcode,
    // required this.daoProduct,
  });

  final String barcode;
  // final DaoProduct daoProduct;

  Future<FetchedProduct> getFetchedProduct() async {
    final configuration = ProductQueryConfiguration(
      barcode,
      fields: ProductQuery.fields,
      language: ProductQuery.getLanguage(),
      country: ProductQuery.getCountry(),
    );

    final ProductResult result;
    try {
      result = await OpenFoodAPIClient.getProduct(configuration);
    } catch (e) {
      return FetchedProduct.error(FetchedProductStatus.internetError);
    }

    if (result.status == 1) {
      final product = result.product;
      if (product != null) {
        // await daoProduct.put(product);
        return FetchedProduct(product);
      }
    }
    if (barcode.trim().isNotEmpty &&
        (result.barcode == null || result.barcode!.isEmpty)) {
      return FetchedProduct.error(FetchedProductStatus.codeInvalid);
    }
    return FetchedProduct.error(FetchedProductStatus.internetNotFound);
  }
}
