import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';
import 'package:private_fit/domain/open_food/product_query.dart';

@LazySingleton(as: IOpenFoodFactsFacade)
class OpenFoodFactsServices extends IOpenFoodFactsFacade {
  @override
  Future<Either<OpenFoodFailures, Unit>> justplaceholder() {
    throw UnimplementedError();
  }

  @override
  Future<FetchedProduct> getFetchedFood(String barcode) async {
    ProductQuery.setCountry('us');
    ProductQuery.setLanguage('en_Us');
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
