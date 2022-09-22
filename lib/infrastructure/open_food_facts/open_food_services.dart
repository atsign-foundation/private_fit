import 'dart:convert';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';
import 'package:private_fit/domain/open_food/product_query.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/injections.dart';

@LazySingleton(as: IOpenFoodFactsFacade)
class OpenFoodFactsServices implements IOpenFoodFactsFacade {
  final AtSignLogger _logger = AtSignLogger('OpenFoodFactsServices');

// late  _atClientPreference;
  Map<String, AtClientService> atClientServiceMap = {};
  late AtClientPreference atClientPreference;
  late AtClientService atClientServiceInstance;

  AtClientManager atClientManager = AtClientManager.getInstance();
  final SdkServices _sdkServices = SdkServices.getInstance();

  IAtsignOnBoardingFacade onBoardFacade = getIt<IAtsignOnBoardingFacade>();

  @override
  Future<Either<OpenFoodFailures, Unit>> justplaceholder() {
    throw UnimplementedError();
  }

  @override
  Future<Either<OpenFoodFailures, FetchedProduct>> getFetchedFood(
    String barcode,
  ) async {
    _logger.info('Got The Barcode from camera $barcode');
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
      return left(const OpenFoodFailures.internetError());
    }

    if (result.status == 1) {
      final product = result.product;
      if (product != null) {
        // await daoProduct.put(product);
        _logger.info('Successful got the Product associated with the Barcode');
        return right(FetchedProduct(product));
      } else {
        return left(const OpenFoodFailures.codeInvalid());
      }
    }
    if (barcode.trim().isNotEmpty &&
        (result.barcode == null || result.barcode!.isEmpty)) {
      return left(const OpenFoodFailures.codeInvalid());
    }
    return left(const OpenFoodFailures.codeInvalid());
  }

  @override
  Future<Either<OpenFoodFailures, Unit>> saveNutritionalData(
    Product product,
  ) async {
    _logger.shout(product.toJson());
    // final _userNameDto = UserNameDto.fromDomain(userNameModel);
    final _productNutritionDataKey = Keys.productNutritionDataKey
      ..sharedWith = atClientManager.atClient.getCurrentAtSign()
      ..sharedBy = atClientManager.atClient.getCurrentAtSign()
      ..value = Value(
        value: product.toJson(),
        labelName: 'nutrition',
        type: 'health',
      );

    try {
      _logger.info('saving prosuct Data to atsign Dess $product');
      final t = await _sdkServices.put(_productNutritionDataKey);
      _logger.shout(t);
      return right(unit);
    } catch (e) {
      return left(const OpenFoodFailures.failToSaveData());
    }
  }
}

/// Helper class about getting and caching the back-end ordered nutrients.
class OrderedNutrientsCache {
  late OrderedNutrients? _orderedNutrients;
  OrderedNutrients get orderedNutrients => _orderedNutrients!;

  /// Downloads the ordered nutrients and caches them in the database.
  Future<OrderedNutrients> download() async {
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
