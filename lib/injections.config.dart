// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i17;
import 'application/open_food/bloc/open_food_bloc.dart' as _i20;
import 'domain/contacts/i_contacts_facade.dart' as _i6;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i13;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i19;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i14;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i4;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i16;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i10;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i11;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i18;
import 'domain/on_boarding/use_cases/set_username_use_case.dart' as _i12;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i8;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i15;
import 'infrastructure/contacts/contacts_facade.dart' as _i7;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i5;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i9;
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
  gh.lazySingleton<_i8.IOpenFoodFactsFacade>(() => _i9.OpenFoodFactsServices());
  gh.factory<_i10.LoadAtClientPreferenceUseCase>(() =>
      _i10.LoadAtClientPreferenceUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i11.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i11.OnBoardDataWhenSuccessfulUseCase(
          get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i12.SetUserNameUseCase>(
      () => _i12.SetUserNameUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i13.AtContactInitializationUseCase>(
      () => _i13.AtContactInitializationUseCase(get<_i6.IContactsFacade>()));
  gh.factory<_i14.GetActiveAtsignUseCase>(
      () => _i14.GetActiveAtsignUseCase(get<_i6.IContactsFacade>()));
  gh.factory<_i15.GetFetchedFood>(
      () => _i15.GetFetchedFood(get<_i8.IOpenFoodFactsFacade>()));
  gh.factory<_i16.GetOnBoardedAtSignUseCase>(
      () => _i16.GetOnBoardedAtSignUseCase(get<_i4.IAtsignOnBoardingFacade>()));
  gh.factory<_i17.OnBoardingBloc>(() => _i17.OnBoardingBloc(
      get<_i18.LoadAtClientPreferenceUseCase>(),
      get<_i18.GetOnBoardedAtSignUseCase>(),
      get<_i18.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i19.AtContactInitializationUseCase>(),
      get<_i12.SetUserNameUseCase>()));
  gh.lazySingleton<_i20.OpenFoodBloc>(
      () => _i20.OpenFoodBloc(get<_i15.GetFetchedFood>()));
  return get;
}
