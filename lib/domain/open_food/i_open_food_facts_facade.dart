import 'package:dartz/dartz.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';

abstract class IOpenFoodFactsFacade {
  Future<Either<OpenFoodFailures, Unit>> justplaceholder();
  Future<Either<OpenFoodFailures, FetchedProduct>> getFetchedFood(
    String barcode,
  );

  Future<Either<OpenFoodFailures, Unit>> saveNutritionalData(
    Product product,
  );

  Future<Either<AtPlatformFailure, Product>> getSavedFood();
}
