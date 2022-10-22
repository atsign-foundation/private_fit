// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// InjectableConfigGenerator
// **************************************************************************

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import 'application/bloc/sign_in_bloc.dart' as _i32;
import 'application/bot_nav_bar/bloc/bot_nav_bar_bloc.dart' as _i4;
import 'application/home/bloc/home_bloc.dart' as _i7;
import 'application/menstrual/bloc/menstrual_bloc.dart' as _i41;
import 'application/on_boarding/bloc/on_boarding_bloc.dart' as _i42;
import 'application/open_food/bloc/open_food_bloc.dart' as _i44;
import 'application/open_food/bloc/open_food_dess_bloc.dart' as _i45;
import 'application/pedometer/bloc/pedometer_bloc.dart' as _i46;
import 'application/setting/bloc/settings_bloc.dart' as _i47;
import 'application/theme/theme.dart' as _i34;
import 'domain/contacts/i_contacts_facade.dart' as _i10;
import 'domain/contacts/use_cases/at_contact_initialization_use_case.dart'
    as _i35;
import 'domain/contacts/use_cases/get_active_atsign_use_case.dart' as _i36;
import 'domain/home/i_home_facade.dart' as _i12;
import 'domain/menstrual/i_menstrual_facade.dart' as _i14;
import 'domain/menstrual/use_cases/get_mentrual_data_use_case.dart' as _i38;
import 'domain/menstrual/use_cases/save_menstrual_data_use_case.dart' as _i28;
import 'domain/on_boarding/i_atsign_on_boarding_facade.dart' as _i8;
import 'domain/on_boarding/use_cases/load_client_prefs_use_case.dart' as _i23;
import 'domain/on_boarding/use_cases/on_board_data_when_succesful_use_case.dart'
    as _i25;
import 'domain/on_boarding/use_cases/on_boarding_use_cases.dart' as _i43;
import 'domain/open_food/i_open_food_facts_facade.dart' as _i16;
import 'domain/open_food/use_cases/get_fetched_food_use_case.dart' as _i37;
import 'domain/open_food/use_cases/get_product_from_dess_use_case.dart' as _i39;
import 'domain/open_food/use_cases/save_product_data_use_case.dart' as _i29;
import 'domain/pedometer/i_pedometer_facade.dart' as _i18;
import 'domain/pedometer/use_cases/get_fetched_step_use_case.dart' as _i22;
import 'domain/pedometer/use_cases/pedestrian_status_use_case.dart' as _i27;
import 'domain/pedometer/use_cases/steps_count_stream_use_case.dart' as _i33;
import 'domain/settings/i_settings_facade.dart' as _i20;
import 'domain/settings/use_cases/get_name_use_case.dart' as _i40;
import 'domain/settings/use_cases/user_name_use_case.dart' as _i31;
import 'domain/sign_in/i_sign_in_facade.dart' as _i6;
import 'domain/sign_in/use_cases/get_atsign_with_status_use_case.dart' as _i5;
import 'domain/sign_in/use_cases/load_client_prefs_use_case.dart' as _i24;
import 'domain/sign_in/use_cases/on_board_use_case.dart' as _i26;
import 'domain/sign_in/use_cases/set_atclient_prefs_use_case.dart' as _i30;
import 'infrastructure/contacts/contacts_facade.dart' as _i11;
import 'infrastructure/home/home_facade.dart' as _i13;
import 'infrastructure/menstrual/menstrual_facade.dart' as _i15;
import 'infrastructure/on_boarding/onboarding_atsign_facade.dart' as _i9;
import 'infrastructure/open_food_facts/open_food_services.dart' as _i17;
import 'infrastructure/pedometer/pedometer_facade.dart' as _i19;
import 'infrastructure/setting/settings_facade.dart' as _i21;
import 'presentation/routes/router.dart'
    as _i3; // ignore_for_file: unnecessary_lambdas

// ignore_for_file: lines_longer_than_80_chars
/// initializes the registration of provided dependencies inside of [GetIt]
_i1.GetIt $initGetIt(
  _i1.GetIt get, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    get,
    environment,
    environmentFilter,
  );
  gh.singleton<_i3.$Router>(_i3.$Router());
  gh.lazySingleton<_i4.BotNavBarBloc>(() => _i4.BotNavBarBloc());
  gh.lazySingleton<_i5.GetAtSignWithStatusUseCase>(
      () => _i5.GetAtSignWithStatusUseCase(get<_i6.ISignInFacade>()));
  gh.factory<_i7.HomeBloc>(() => _i7.HomeBloc());
  gh.lazySingleton<_i8.IAtsignOnBoardingFacade>(
      () => _i9.OnBoardingAtsignFacade());
  gh.lazySingleton<_i10.IContactsFacade>(() => _i11.ContactsFacade());
  gh.factory<_i12.IHomeFacade>(() => _i13.HomeFacade());
  gh.lazySingleton<_i14.IMenstrualFacade>(() => _i15.MenstrualFacade());
  gh.lazySingleton<_i16.IOpenFoodFactsFacade>(
      () => _i17.OpenFoodFactsServices());
  gh.lazySingleton<_i18.IPedometerFacade>(() => _i19.PedometerServices());
  gh.lazySingleton<_i20.ISettingsFacade>(() => _i21.SettingsFacade());
  gh.lazySingleton<_i22.InitPedometerUseCase>(
      () => _i22.InitPedometerUseCase(get<_i18.IPedometerFacade>()));
  gh.factory<_i23.LoadAtClientPreferenceUseCase>(() =>
      _i23.LoadAtClientPreferenceUseCase(get<_i8.IAtsignOnBoardingFacade>()));
  gh.factory<_i24.LoadAtClientPreferenceUseCase>(
      () => _i24.LoadAtClientPreferenceUseCase(get<_i6.ISignInFacade>()));
  gh.factory<_i25.OnBoardDataWhenSuccessfulUseCase>(() =>
      _i25.OnBoardDataWhenSuccessfulUseCase(
          get<_i8.IAtsignOnBoardingFacade>()));
  gh.lazySingleton<_i26.OnBoardUseCase>(
      () => _i26.OnBoardUseCase(get<_i6.ISignInFacade>()));
  gh.lazySingleton<_i27.PedestrianStatusUseCase>(
      () => _i27.PedestrianStatusUseCase(get<_i18.IPedometerFacade>()));
  gh.lazySingleton<_i28.SaveMenstrualDataUseCase>(
      () => _i28.SaveMenstrualDataUseCase(get<_i14.IMenstrualFacade>()));
  gh.lazySingleton<_i29.SaveProductDataUseCase>(
      () => _i29.SaveProductDataUseCase(get<_i16.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i30.SetAtClienPreferencesUseCase>(
      () => _i30.SetAtClienPreferencesUseCase(get<_i6.ISignInFacade>()));
  gh.lazySingleton<_i31.SettingUserNameUseCase>(
      () => _i31.SettingUserNameUseCase(get<_i20.ISettingsFacade>()));
  gh.lazySingleton<_i32.SignInBloc>(() => _i32.SignInBloc(
        get<_i5.GetAtSignWithStatusUseCase>(),
        get<_i30.SetAtClienPreferencesUseCase>(),
        get<_i24.LoadAtClientPreferenceUseCase>(),
        get<_i26.OnBoardUseCase>(),
      ));
  gh.lazySingleton<_i33.StepsCountStreamUseCase>(
      () => _i33.StepsCountStreamUseCase(get<_i18.IPedometerFacade>()));
  gh.factory<_i34.ThemeCubit>(() => _i34.ThemeCubit());
  gh.factory<_i35.AtContactInitializationUseCase>(
      () => _i35.AtContactInitializationUseCase(get<_i10.IContactsFacade>()));
  gh.factory<_i36.GetActiveAtsignUseCase>(
      () => _i36.GetActiveAtsignUseCase(get<_i10.IContactsFacade>()));
  gh.factory<_i37.GetFetchedFood>(
      () => _i37.GetFetchedFood(get<_i16.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i38.GetMenstrualDataUseCase>(
      () => _i38.GetMenstrualDataUseCase(get<_i14.IMenstrualFacade>()));
  gh.factory<_i39.GetProductFromDessUseCase>(
      () => _i39.GetProductFromDessUseCase(get<_i16.IOpenFoodFactsFacade>()));
  gh.lazySingleton<_i40.GettgUserNameUseCase>(
      () => _i40.GettgUserNameUseCase(get<_i20.ISettingsFacade>()));
  gh.lazySingleton<_i41.MenstrualBloc>(() => _i41.MenstrualBloc(
        get<_i28.SaveMenstrualDataUseCase>(),
        get<_i38.GetMenstrualDataUseCase>(),
      ));
  gh.lazySingleton<_i42.OnBoardingBloc>(() => _i42.OnBoardingBloc(
        get<_i43.LoadAtClientPreferenceUseCase>(),
        get<_i43.OnBoardDataWhenSuccessfulUseCase>(),
        get<_i35.AtContactInitializationUseCase>(),
      ));
  gh.lazySingleton<_i44.OpenFoodBloc>(() => _i44.OpenFoodBloc(
        get<_i37.GetFetchedFood>(),
        get<_i29.SaveProductDataUseCase>(),
        get<_i39.GetProductFromDessUseCase>(),
      ));
  gh.factory<_i45.OpenFoodDessBloc>(
      () => _i45.OpenFoodDessBloc(get<_i39.GetProductFromDessUseCase>()));
  gh.lazySingleton<_i46.PedometerBloc>(() => _i46.PedometerBloc(
        get<_i22.InitPedometerUseCase>(),
        get<_i27.PedestrianStatusUseCase>(),
        get<_i33.StepsCountStreamUseCase>(),
      ));
  gh.lazySingleton<_i47.SettingsBloc>(() => _i47.SettingsBloc(
        get<_i31.SettingUserNameUseCase>(),
        get<_i40.GettgUserNameUseCase>(),
      ));
  return get;
}
