// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i3;
import 'application/home/bloc/home_bloc.dart' as _i22;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i14;
import 'application/open_food/bloc/open_food_bloc.dart' as _i17;
import 'domain/contacts/i_contacts_facade.dart' as _i8;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i19;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i16;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i20;
import 'domain/home/i_home_facade.dart' as _i10;
import 'domain/home/use_cases/set_username_use_case.dart' as _i18;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i6;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i21;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i12;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i13;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i15;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i5;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i4;
import 'infrastructure/contacts/contacts_facade.dart' as _i9;
import 'infrastructure/home/home_facade.dart' as _i11;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart'
    as _i7; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.factory<_i3.BotNavBarBloc>(() => _i3.BotNavBarBloc());
  gh.factory<_i4.GetFetchedFood>(
      () => _i4.GetFetchedFood(get<_i5.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i6.IAtsignOnBoardingFacade>(
      () => _i7.OnBoardingAtsignFacade());
  gh.lazySingleton<_i8.IContactsFacade>(() => _i9.ContactsFacade());
  gh.factory<_i10.IHomeFacade>(() => _i11.HomeFacade());
  gh.factory<_i12.LoadAtClientPreferenceUseCase>(() =>
      _i12.LoadAtClientPreferenceUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.factory<_i13.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i13.OnBoardDataWhenSuccessfulUseCase(
          get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i14.OnBoardingBloc>(() => _i14.OnBoardingBloc(
      get<_i15.LoadAtClientPreferenceUseCase>(),
      get<_i15.GetOnBoardedAtSignUseCase>(),
      get<_i15.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i16.AtContactInitializationUseCase>()));
  gh.lazySingleton<_i17.OpenFoodBloc>(
      () => _i17.OpenFoodBloc(get<_i4.GetFetchedFood>()));
  gh.lazySingleton<_i18.SetUserNameUseCase>(
      () => _i18.SetUserNameUseCase(get<_i10.IHomeFacade>()));
  gh.factory<_i19.AtContactInitializationUseCase>(
      () => _i19.AtContactInitializationUseCase(get<_i8.IContactsFacade>()));
  gh.factory<_i20.GetActiveAtsignUseCase>(
      () => _i20.GetActiveAtsignUseCase(get<_i8.IContactsFacade>()));
  gh.factory<_i21.GetOnBoardedAtSignUseCase>(
      () => _i21.GetOnBoardedAtSignUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.factory<_i22.HomeBloc>(
      () => _i22.HomeBloc(get<_i18.SetUserNameUseCase>()));
  return get;
}
