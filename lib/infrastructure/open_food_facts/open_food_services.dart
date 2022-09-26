import 'dart:convert';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:at_utils/at_utils.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/model/OrderedNutrients.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/core/key_model.dart';
import 'package:private_fit/domain/core/keys.dart';
import 'package:private_fit/domain/core/value_model.dart';
import 'package:private_fit/domain/on_boarding/i_atsign_on_boarding_facade.dart';
import 'package:private_fit/domain/open_food/i_open_food_facts_facade.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';
import 'package:private_fit/domain/open_food/product_query.dart';
import 'package:private_fit/infrastructure/atplatform/platform_services.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/shared/constants.dart';

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

  @override
  Future<Either<AtPlatformFailure, Product>> getSavedFood() async {
    _logger.finer('Getting name');

    return getAllKeys(
      regex: '${Keys.productNutritionDataKey.key}.${Constants.appNamespace}',
    ).then(
      (value) => get(PassKey.fromAtKey(value.first)).then((value) {
        return value.fold(
          left,
          (r) {
            final d = jsonDecode(r.value as String)['value'];
            return right(
              Product.fromJson(d as Map<String, dynamic>),
            );
          },
        );
      }),
    );
  }

  Future<List<AtKey>> getAllKeys({
    String? regex,
    String? sharedBy,
    String? sharedWith,
  }) async {
    try {
      final result = await atClientManager.atClient
          .getAtKeys(regex: regex, sharedBy: sharedBy, sharedWith: sharedWith);
      return result;
    } on Exception catch (e, s) {
      _logger.severe('Error while fetching keys', e, s);
      return <AtKey>[];
    }
  }

  /// Get the value of the key.
  Future<Either<AtPlatformFailure, AtValue>> get(PassKey entity) async {
    try {
      final _value = await atClientManager.atClient.get(entity.toAtKey());
      return right(_value);
      // return jsonDecode(_value.value as String)['value'];
    } on KeyNotFoundException catch (e, s) {
      _logger.severe('Key not found with message ${e.message}', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
    } on FormatException catch (e, s) {
      _logger.severe('FormatError: $e', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
    } on Exception catch (e, s) {
      _logger.severe('Error while getting data, Error: $e', e, s);
      return left(const AtPlatformFailure.cancelledByUser());
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
