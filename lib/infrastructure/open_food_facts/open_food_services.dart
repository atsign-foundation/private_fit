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
  Future<Either<OpenFoodFailures, FetchedProduct>> getFetchedFood(
    String barcode,
  ) async {
    ProductQuery.setCountry('us');
<<<<<<< HEAD
    ProductQuery.setLanguage('en-us');
=======
    ProductQuery.setLanguage('en_Us');
>>>>>>> feature/openfoodfacts
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
      return left(const OpenFoodFailures.internetError());
    }

    if (result.status == 1) {
      final product = result.product;
      if (product != null) {
        // await daoProduct.put(product);
        return right(FetchedProduct(product));
      }
    }
    if (barcode.trim().isNotEmpty &&
        (result.barcode == null || result.barcode!.isEmpty)) {
      return left(const OpenFoodFailures.codeInvalid());
    }
    return left(const OpenFoodFailures.internetNotFound());
  }
}
