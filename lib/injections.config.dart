// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/home/bloc/home_bloc.dart' as _i22;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i14;
import 'application/open_food/bloc/open_food_bloc.dart' as _i23;
import 'domain/contacts/i_contacts_facade.dart' as _i6;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i18;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i16;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i19;
import 'domain/home/i_home_facade.dart' as _i8;
import 'domain/home/use_cases/set_username_use_case.dart' as _i17;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i4;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i21;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i12;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i13;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i15;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i10;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i20;
import 'infrastructure/contacts/contacts_facade.dart' as _i7;
import 'infrastructure/home/home_facade.dart' as _i9;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i5;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i11;
import 'presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.factory<_i4.IAtsignOnBoardingFacade>(() => _i5.OnBoardingAtsignFacade());
  gh.lazySingleton<_i6.IContactsFacade>(() => _i7.ContactsFacade());
  gh.factory<_i8.IHomeFacade>(() => _i9.HomeFacade());
  gh.lazySingleton<_i10.IOpenFoodFactsFacade>(
      () => _i11.OpenFoodFactsServices());
  gh.factory<_i12.LoadAtClientPreferenceUseCase>(() =>
      _i12.LoadAtClientPreferenceUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i13.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i13.OnBoardDataWhenSuccessfulUseCase(
          get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i14.OnBoardingBloc>(() => _i14.OnBoardingBloc(
      get<_i15.LoadAtClientPreferenceUseCase>(),
      get<_i15.GetOnBoardedAtSignUseCase>(),
      get<_i15.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i16.AtContactInitializationUseCase>()));
  gh.factory<_i17.SetUserNameUseCase>(
      () => _i17.SetUserNameUseCase(get<_i8.IHomeFacade>()));
  gh.factory<_i18.AtContactInitializationUseCase>(
      () => _i18.AtContactInitializationUseCase(get<_i6.IContactsFacade>()));
  gh.factory<_i19.GetActiveAtsignUseCase>(
      () => _i19.GetActiveAtsignUseCase(get<_i6.IContactsFacade>()));
  gh.factory<_i20.GetFetchedFood>(
      () => _i20.GetFetchedFood(get<_i10.IOpenFoodFactsFacade>()));
  gh.factory<_i21.GetOnBoardedAtSignUseCase>(
      () => _i21.GetOnBoardedAtSignUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i22.HomeBloc>(
      () => _i22.HomeBloc(get<_i17.SetUserNameUseCase>()));
  gh.lazySingleton<_i23.OpenFoodBloc>(
      () => _i23.OpenFoodBloc(get<_i20.GetFetchedFood>()));
  return get;
}
