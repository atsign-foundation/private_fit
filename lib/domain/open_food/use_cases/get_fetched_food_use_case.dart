import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';

@injectable
class GetFetchedFood {
  GetFetchedFood(this._iOpenFoodFactsFacade);

  final IOpenFoodFactsFacade _iOpenFoodFactsFacade;

  Future<Either<OpenFoodFailures, FetchedProduct>> call(String barcode) =>
      _iOpenFoodFactsFacade.getFetchedFood(barcode);
}
