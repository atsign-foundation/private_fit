// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/sign_in_bloc.dart' as _i49;
import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/home/bloc/home_bloc.dart' as _i5;
import 'application/menstrual/bloc/menstrual_bloc.dart' as _i45;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i28;
import 'application/open_food/bloc/open_food_bloc.dart' as _i46;
import 'application/pedometer/bloc/pedometer_bloc.dart' as _i47;
import 'application/setting/bloc/settings_bloc.dart' as _i48;
import 'application/theme/theme.dart' as _i37;
import 'domain/contacts/i_contacts_facade.dart' as _i8;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i38;
import 'domain/contacts/use_cases/at_contacts_use_cases.dart' as _i30;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i39;
import 'domain/home/i_home_facade.dart' as _i10;
import 'domain/menstrual/i_menstrual_facade.dart' as _i12;
import 'domain/menstrual/use_cases/get_mentrual_data_use_case.dart' as _i42;
import 'domain/menstrual/use_cases/save_menstrual_data_use_case.dart' as _i32;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i6;
import 'domain/on_boarding/use_cases/get_on_boarded_at_sign_use_case.dart'
    as _i43;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i23;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i26;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i29;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i14;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i41;
import 'domain/open_food/use_cases/save_product_data_use_case.dart' as _i33;
import 'domain/pedometer/i_pedometer_facade.dart' as _i16;
import 'domain/pedometer/use_cases/get_fetched_step_use_case.dart' as _i22;
import 'domain/pedometer/use_cases/pedestrian_status_use_case.dart' as _i31;
import 'domain/pedometer/use_cases/steps_count_stream_use_case.dart' as _i36;
import 'domain/settings/i_settings_facade.dart' as _i18;
import 'domain/settings/use_cases/get_name_use_case.dart' as _i44;
import 'domain/settings/use_cases/user_name_use_case.dart' as _i35;
import 'domain/sign_in/i_sign_in_facade.dart' as _i20;
import 'domain/sign_in/use_cases/get_atsign_with_status_use_case.dart' as _i40;
import 'domain/sign_in/use_cases/load_client_prefs_use_case.dart' as _i24;
import 'domain/sign_in/use_cases/on_board_use_case.dart' as _i27;
import 'domain/sign_in/use_cases/set_atclient_prefs_use_case.dart' as _i34;
import 'infrastructure/contacts/contacts_facade.dart' as _i9;
import 'infrastructure/home/home_facade.dart' as _i11;
import 'infrastructure/menstrual/menstrual_facade.dart' as _i13;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i7;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i15;
import 'infrastructure/pedometer/pedometer_facade.dart' as _i17;
import 'infrastructure/setting/settings_facade.dart' as _i19;
import 'infrastructure/sign_in/sign_in_facade.dart' as _i21;
import 'presentation/routes/router.dart' as _i3;
import 'shared/global_navigator_key.dart'
    as _i25; // ignore_for_file: unnecessary_lambdas

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
  gh.lazySingleton<_i16.IPedometerFacade>(() => _i17.PedometerServices());
  gh.lazySingleton<_i18.ISettingsFacade>(() => _i19.SettingsFacade());
  gh.lazySingleton<_i20.ISignInFacade>(() => _i21.SignInFacade());
  gh.lazySingleton<_i22.InitPedometerUseCase>(
      () => _i22.InitPedometerUseCase(get<_i16.IPedometerFacade>()));
  gh.factory<_i23.LoadAtClientPreferenceUseCase>(() =>
      _i23.LoadAtClientPreferenceUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.factory<_i24.LoadAtClientPreferenceUseCase>(
      () => _i24.LoadAtClientPreferenceUseCase(get<_i20.ISignInFacade>()));
  gh.factory<_i25.NavService>(() => _i25.NavService());
  gh.factory<_i26.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i26.OnBoardDataWhenSuccessfulUseCase(
          get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i27.OnBoardUseCase>(
      () => _i27.OnBoardUseCase(get<_i20.ISignInFacade>()));
  gh.lazySingleton<_i28.OnBoardingBloc>(() => _i28.OnBoardingBloc(
      get<_i29.LoadAtClientPreferenceUseCase>(),
      get<_i29.GetOnBoardedAtSignUseCase>(),
      get<_i29.OnBoardDataWhenSuccessfulUseCase>(),
      get<_i30.AtContactInitializationUseCase>()));
  gh.lazySingleton<_i31.PedestrianStatusUseCase>(
      () => _i31.PedestrianStatusUseCase(get<_i16.IPedometerFacade>()));
  gh.lazySingleton<_i32.SaveMenstrualDataUseCase>(
      () => _i32.SaveMenstrualDataUseCase(get<_i12.IMenstrualFacade>()));
  gh.lazySingleton<_i33.SaveProductDataUseCase>(
      () => _i33.SaveProductDataUseCase(get<_i14.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i34.SetAtClienPreferencesUseCase>(
      () => _i34.SetAtClienPreferencesUseCase(get<_i20.ISignInFacade>()));
  gh.lazySingleton<_i35.SettingUserNameUseCase>(
      () => _i35.SettingUserNameUseCase(get<_i18.ISettingsFacade>()));
  gh.lazySingleton<_i36.StepsCountStreamUseCase>(
      () => _i36.StepsCountStreamUseCase(get<_i16.IPedometerFacade>()));
  gh.factory<_i37.ThemeCubit>(() => _i37.ThemeCubit());
  gh.factory<_i38.AtContactInitializationUseCase>(
      () => _i38.AtContactInitializationUseCase(get<_i8.IContactsFacade>()));
  gh.factory<_i39.GetActiveAtsignUseCase>(
      () => _i39.GetActiveAtsignUseCase(get<_i8.IContactsFacade>()));
  gh.lazySingleton<_i40.GetAtSignWithStatusUseCase>(
      () => _i40.GetAtSignWithStatusUseCase(get<_i20.ISignInFacade>()));
  gh.factory<_i41.GetFetchedFood>(
      () => _i41.GetFetchedFood(get<_i14.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i42.GetMenstrualDataUseCase>(
      () => _i42.GetMenstrualDataUseCase(get<_i12.IMenstrualFacade>()));
  gh.factory<_i43.GetOnBoardedAtSignUseCase>(
      () => _i43.GetOnBoardedAtSignUseCase(get<_i6.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i44.GettgUserNameUseCase>(
      () => _i44.GettgUserNameUseCase(get<_i18.ISettingsFacade>()));
  gh.lazySingleton<_i45.MenstrualBloc>(() => _i45.MenstrualBloc(
      get<_i32.SaveMenstrualDataUseCase>(),
      get<_i42.GetMenstrualDataUseCase>()));
  gh.lazySingleton<_i46.OpenFoodBloc>(() => _i46.OpenFoodBloc(
      get<_i41.GetFetchedFood>(), get<_i33.SaveProductDataUseCase>()));
  gh.lazySingleton<_i47.PedometerBloc>(() => _i47.PedometerBloc(
      get<_i22.InitPedometerUseCase>(),
      get<_i31.PedestrianStatusUseCase>(),
      get<_i36.StepsCountStreamUseCase>()));
  gh.lazySingleton<_i48.SettingsBloc>(() => _i48.SettingsBloc(
      get<_i35.SettingUserNameUseCase>(), get<_i44.GettgUserNameUseCase>()));
  gh.lazySingleton<_i49.SignInBloc>(() => _i49.SignInBloc(
      get<_i40.GetAtSignWithStatusUseCase>(),
      get<_i34.SetAtClienPreferencesUseCase>(),
      get<_i24.LoadAtClientPreferenceUseCase>(),
      get<_i27.OnBoardUseCase>()));
  return get;
}
