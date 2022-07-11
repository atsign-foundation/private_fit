// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/home/bloc/home_bloc.dart' as _i23;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i15;
import 'application/open_food/bloc/open_food_bloc.dart' as _i24;
import 'domain/contacts/i_contacts_facade.dart' as _i7;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i19;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i17;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i20;
import 'domain/home/i_home_facade.dart' as _i9;
import 'domain/home/use_cases/set_username_use_case.dart' as _i18;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i5;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i22;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i13;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i14;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i16;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i11;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i21;
import 'infrastructure/contacts/contacts_facade.dart' as _i8;
import 'infrastructure/home/home_facade.dart' as _i10;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i6;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i12;
import 'presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.factory<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.lazySingleton<_i5.IAtsignOnBoardingFacade>(
      () => _i6.OnBoardingAtsignFacade());
  gh.lazySingleton<_i7.IContactsFacade>(() => _i8.ContactsFacade());
  gh.factory<_i9.IHomeFacade>(() => _i10.HomeFacade());
  gh.lazySingleton<_i11.IOpenFoodFactsFacade>(
      () => _i12.OpenFoodFactsServices());
  gh.factory<_i13.LoadAtClientPreferenceUseCase>(() =>
      _i13.LoadAtClientPreferenceUseCase(get<_i5.IAtsignOnBoardingFacade>()));
  gh.factory<_i14.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i14.OnBoardDataWhenSuccessfulUseCase(
          get<_i5.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i15.OnBoardingBloc>(() => _i15.OnBoardingBloc(
      get<_i16.LoadAtClientPreferenceUseCase>(),
      get<_i16.GetOnBoardedAtSignUseCase>(),
      get<_i16.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i17.AtContactInitializationUseCase>()));
  gh.lazySingleton<_i18.SetUserNameUseCase>(
      () => _i18.SetUserNameUseCase(get<_i9.IHomeFacade>()));
  gh.factory<_i19.AtContactInitializationUseCase>(
      () => _i19.AtContactInitializationUseCase(get<_i7.IContactsFacade>()));
  gh.factory<_i20.GetActiveAtsignUseCase>(
      () => _i20.GetActiveAtsignUseCase(get<_i7.IContactsFacade>()));
  gh.factory<_i21.GetFetchedFood>(
      () => _i21.GetFetchedFood(get<_i11.IOpenFoodFactsFacade>()));
  gh.factory<_i22.GetOnBoardedAtSignUseCase>(
      () => _i22.GetOnBoardedAtSignUseCase(get<_i5.IAtsignOnBoardingFacade>()));
  gh.factory<_i23.HomeBloc>(
      () => _i23.HomeBloc(get<_i18.SetUserNameUseCase>()));
  gh.lazySingleton<_i24.OpenFoodBloc>(
      () => _i24.OpenFoodBloc(get<_i21.GetFetchedFood>()));
  return get;
}
