import 'package:dartz/dartz.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';

abstract class IOpenFoodFactsFacade {
  Future<Either<OpenFoodFailures, Unit>> justplaceholder();
  Future<Either<OpenFoodFailures, FetchedProduct>> getFetchedFood(
    String barcode,
  );
}
