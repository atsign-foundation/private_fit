import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:openfoodfacts/model/Product.dart';
import 'package:private_fit/domain/core/at_platform_failures.dart';
import 'package:private_fit/domain/open_food/use_cases/get_product_from_dess_use_case.dart';

part 'open_food_dess_event.dart';
part 'open_food_dess_state.dart';
part 'open_food_dess_bloc.freezed.dart';

@injectable
class OpenFoodDessBloc extends Bloc<OpenFoodDessEvent, OpenFoodDessState> {
  OpenFoodDessBloc(this._getProductFromDessUseCase)
      : super(OpenFoodDessState.initial()) {
    on<OpenFoodDessEvent>(_openFoodHandler);
  }

  final GetProductFromDessUseCase _getProductFromDessUseCase;

  FutureOr<void> _openFoodHandler(
    OpenFoodDessEvent event,
    Emitter<OpenFoodDessState> emit,
  ) async {
    await event.map(
      started: (_) async {
        await _getProductFromDessUseCase.call().then(
              (value) => value.fold(
                (l) => emit(
                  state.copyWith(showErrors: true, atPlatformFailure: l),
                ),
                (r) {
                  final split = r.ingredientsText!.split(',');
                  final Map<int, String> values = {
                    for (int i = 0; i < split.length; i++) i: split[i]
                  };

                  emit(
                    state.copyWith(
                      isLoaded: true,
                      product: r,
                      nutrition_01: values[0],
                      nutrition_02: values[1],
                      nutrition_03: values[3],
                    ),
                  );
                },
              ),
            );
      },
    );
  }
}
