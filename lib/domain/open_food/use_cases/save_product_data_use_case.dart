import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';

@lazySingleton
class SaveProductDataUseCase {
  SaveProductDataUseCase(this._iOpenFoodFactsFacade);

  final IOpenFoodFactsFacade _iOpenFoodFactsFacade;

  Future<Either<OpenFoodFailures, Unit>> call(Product product) =>
      _iOpenFoodFactsFacade.saveNutritionalData(product);
}
