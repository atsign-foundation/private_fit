// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i13;
import 'application/open_food/bloc/open_food_bloc.dart' as _i20;
import 'domain/contacts/i_contacts_facade.dart' as _i7;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i16;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i15;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i17;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i5;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i19;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i11;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i12;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i14;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i9;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i18;
import 'infrastructure/contacts/contacts_facade.dart' as _i8;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i6;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i10;
import 'presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.factory<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.factory<_i5.IAtsignOnBoardingFacade>(() => _i6.OnBoardingAtsignFacade());
  gh.lazySingleton<_i7.IContactsFacade>(() => _i8.ContactsFacade());
  gh.lazySingleton<_i9.IOpenFoodFactsFacade>(
      () => _i10.OpenFoodFactsServices());
  gh.factory<_i11.LoadAtClientPreferenceUseCase>(() =>
      _i11.LoadAtClientPreferenceUseCase(get<_i5.IAtsignOnBoardingFacade>()));
  gh.factory<_i12.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i12.OnBoardDataWhenSuccessfulUseCase(
          get<_i5.IAtsignOnBoardingFacade>()));
  gh.factory<_i13.OnBoardingBloc>(() => _i13.OnBoardingBloc(
      get<_i14.LoadAtClientPreferenceUseCase>(),
      get<_i14.GetOnBoardedAtSignUseCase>(),
      get<_i14.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i15.AtContactInitializationUseCase>()));
  gh.factory<_i16.AtContactInitializationUseCase>(
      () => _i16.AtContactInitializationUseCase(get<_i7.IContactsFacade>()));
  gh.factory<_i17.GetActiveAtsignUseCase>(
      () => _i17.GetActiveAtsignUseCase(get<_i7.IContactsFacade>()));
  gh.factory<_i18.GetFetchedFood>(
      () => _i18.GetFetchedFood(get<_i9.IOpenFoodFactsFacade>()));
  gh.factory<_i19.GetOnBoardedAtSignUseCase>(
      () => _i19.GetOnBoardedAtSignUseCase(get<_i5.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i20.OpenFoodBloc>(
      () => _i20.OpenFoodBloc(get<_i18.GetFetchedFood>()));
  return get;
}
