// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/home/bloc/home_bloc.dart' as _i5;
import 'application/menstrual/bloc/menstrual_bloc.dart' as _i32;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i21;
import 'application/open_food/bloc/open_food_bloc.dart' as _i33;
import 'application/setting/bloc/settings_bloc.dart' as _i34;
import 'domain/contacts/i_contacts_facade.dart' as _i8;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i26;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i23;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i27;
import 'domain/home/i_home_facade.dart' as _i10;
import 'domain/menstrual/i_menstrual_facade.dart' as _i12;
import 'domain/menstrual/use_cases/get_mentrual_data_use_case.dart' as _i29;
import 'domain/menstrual/use_cases/save_menstrual_data_use_case.dart' as _i24;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i6;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i30;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i18;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i20;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i22;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i14;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i28;
import 'domain/settings/i_settings_facade.dart' as _i16;
import 'domain/settings/use_cases/get_name_use_case.dart' as _i31;
import 'domain/settings/use_cases/user_name_use_case.dart' as _i25;
import 'infrastructure/contacts/contacts_facade.dart' as _i9;
import 'infrastructure/home/home_facade.dart' as _i11;
import 'infrastructure/menstrual/menstrual_facade.dart' as _i13;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i7;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i15;
import 'infrastructure/setting/settings_facade.dart' as _i17;
import 'presentation/routes/router.dart' as _i3;
import 'shared/global_navigator_key.dart'
    as _i19; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(_i1.GetIt get,
    {String? environment, _i2.EnvironmentFilter? environmentFilter}) {
  final gh = _i2.GetItHelper(get, environment, environmentFilter);
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.factory<_i5.HomeBloc>(() => _i5.HomeBloc());
  gh.lazySingleton<_i6.IAtsignOnBoardingFacade>(
      () => _i7.OnBoardingAtsignFacade());
  gh.lazySingleton<_i8.IContactsFacade>(() => _i9.ContactsFacade());
  gh.factory<_i10.IHomeFacade>(() => _i11.HomeFacade());
  gh.lazySingleton<_i12.IMenstrualFacade>(() => _i13.MenstrualFacade());
  gh.lazySingleton<_i14.IOpenFoodFactsFacade>(
      () => _i15.OpenFoodFactsServices());
  gh.lazySingleton<_i16.ISettingsFacade>(() => _i17.SettingsFacade());
  gh.factory<_i18.LoadAtClientPreferenceUseCase>(() =>
      _i18.LoadAtClientPreferenceUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.factory<_i19.NavService>(() => _i19.NavService());
  gh.factory<_i20.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i20.OnBoardDataWhenSuccessfulUseCase(
          get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i21.OnBoardingBloc>(() => _i21.OnBoardingBloc(
      get<_i22.LoadAtClientPreferenceUseCase>(),
      get<_i22.GetOnBoardedAtSignUseCase>(),
      get<_i22.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i23.AtContactInitializationUseCase>()));
  gh.lazySingleton<_i24.SaveMenstrualDataUseCase>(
      () => _i24.SaveMenstrualDataUseCase(get<_i12.IMenstrualFacade>()));
  gh.lazySingleton<_i25.SettingUserNameUseCase>(
      () => _i25.SettingUserNameUseCase(get<_i16.ISettingsFacade>()));
  gh.factory<_i26.AtContactInitializationUseCase>(
      () => _i26.AtContactInitializationUseCase(get<_i8.IContactsFacade>()));
  gh.factory<_i27.GetActiveAtsignUseCase>(
      () => _i27.GetActiveAtsignUseCase(get<_i8.IContactsFacade>()));
  gh.factory<_i28.GetFetchedFood>(
      () => _i28.GetFetchedFood(get<_i14.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i29.GetMenstrualDataUseCase>(
      () => _i29.GetMenstrualDataUseCase(get<_i12.IMenstrualFacade>()));
  gh.factory<_i30.GetOnBoardedAtSignUseCase>(
      () => _i30.GetOnBoardedAtSignUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i31.GettgUserNameUseCase>(
      () => _i31.GettgUserNameUseCase(get<_i16.ISettingsFacade>()));
  gh.lazySingleton<_i32.MenstrualBloc>(() => _i32.MenstrualBloc(
      get<_i24.SaveMenstrualDataUseCase>(),
      get<_i29.GetMenstrualDataUseCase>()));
  gh.lazySingleton<_i33.OpenFoodBloc>(
      () => _i33.OpenFoodBloc(get<_i28.GetFetchedFood>()));
  gh.lazySingleton<_i34.SettingsBloc>(() => _i34.SettingsBloc(
      get<_i25.SettingUserNameUseCase>(), get<_i31.GettgUserNameUseCase>()));
  return get;
}
