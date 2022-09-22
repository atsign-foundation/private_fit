import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/openfoodfacts.dart';
import 'package:private_fit/domain/open_food/open_food_facts_failures.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';
import 'package:private_fit/domain/open_food/use_cases/get_fetched_food_use_case.dart';
import 'package:private_fit/domain/open_food/use_cases/save_product_data_use_case.dart';

part 'open_food_event.dart';
part 'open_food_state.dart';
part 'open_food_bloc.freezed.dart';

@lazySingleton
class OpenFoodBloc extends Bloc<OpenFoodEvent, OpenFoodState> {
  OpenFoodBloc(this._getFetchedFood, this._saveProductDataUseCase)
      : super(const OpenFoodState.initial()) {
    on<OpenFoodEvent>(_openFoodHandler, transformer: sequential());
  }
  final GetFetchedFood _getFetchedFood;
  final SaveProductDataUseCase _saveProductDataUseCase;
  FutureOr<void> _openFoodHandler(
    OpenFoodEvent event,
    Emitter<OpenFoodState> emit,
  ) async {
    await event.map(
      qrDataOnSuccess: (qrData) async {
        await _getFetchedFood(qrData.qRdata).then((value) {
          value.fold(
            (l) => emit(
              OpenFoodState.failureGettingFood(l),
            ),
            (r) => emit(OpenFoodState.loadSuccess(r)),
          );
        });
      },
      saveProductData: (product) async {
        final result = await _saveProductDataUseCase.call(product.product);

        result.fold(
          (l) => emit(OpenFoodState.failureGettingFood(l)),
          (r) => emit(const OpenFoodState.dataSavedSuccesful()),
        );
      },
    );
  }
}
