import 'dart:async';

import 'package:at_client_mobile/at_client_mobile.dart';
import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/domain/core/onboarding_failures.dart';
import 'package:private_fit/domain/home/use_cases/get_all_keys_use_case.dart';
import 'package:private_fit/domain/home/use_cases/set_username_use_case.dart';

part 'home_event.dart';
part 'home_state.dart';
part 'home_bloc.freezed.dart';

@lazySingleton
class HomeBloc extends Bloc<HomeEvent, HomeState> {
  HomeBloc(this._setUserNameUseCase, this._getAllKeysUseCase)
      : super(const _Initial()) {
    on<HomeEvent>(_homeEventHandler);
  }

  final SetUserNameUseCase _setUserNameUseCase;
  final GetAllKeysUseCase _getAllKeysUseCase;

  FutureOr<void> _homeEventHandler(
    HomeEvent event,
    Emitter<HomeState> emit,
  ) async {
    await event.map(
      started: (_) async {
        await _getAllKeysUseCase
            .call()
            .then((value) => emit(HomeState.keysFetched(value)));
      },
      setUserName: (u) async {
        await _setUserNameUseCase
            .call(u.username)
            .then(
              (c) => emit(
                HomeState.username(c),
              ),
            )
            .whenComplete(() => emit(const HomeState.initial()));
      },
    );
  }
}
