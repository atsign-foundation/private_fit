import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';

@injectable
class GetProductFromDessUseCase {
  GetProductFromDessUseCase(this._iOpenFoodFactsFacade);

  final IOpenFoodFactsFacade _iOpenFoodFactsFacade;

  Future<Either<AtPlatformFailure, Product>> call() =>
      _iOpenFoodFactsFacade.getSavedFood();
}
