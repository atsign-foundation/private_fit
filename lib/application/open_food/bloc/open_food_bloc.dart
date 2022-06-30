import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/open_food/open_food_fetched_product.dart';
import 'package:private_fit/domain/open_food/use_cases/get_fetched_food_use_case.dart';

part 'open_food_event.dart';
part 'open_food_state.dart';
part 'open_food_bloc.freezed.dart';

@LazySingleton()
class OpenFoodBloc extends Bloc<OpenFoodEvent, OpenFoodState> {
  OpenFoodBloc(this._getFetchedFood) : super(const OpenFoodState.initial()) {
    on<OpenFoodEvent>(_openFoodHandler, transformer: sequential());
  }
  final GetFetchedFood _getFetchedFood;
  FutureOr<void> _openFoodHandler(
    OpenFoodEvent event,
    Emitter<OpenFoodState> emit,
  ) async {
    await event.map(
      qrDataOnSuccess: (qrData) async {
        await _getFetchedFood(qrData.qRdata).then((value) {
          emit(OpenFoodState.loadSuccess(value));
        });
        // await _getFetchedFood.call(qrData.qRdata).then((v) {
        //   emit(OpenFoodState.loadSuccess(v));
        // });
      },
    );
  }
}
