// import 'package:atsign_location_app/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:private_fit/application/on_boarding/bloc/on_boarding_bloc.dart';
import 'package:private_fit/application/open_food/bloc/open_food_bloc.dart';
import 'package:private_fit/application/setting/bloc/settings_bloc.dart';
import 'package:private_fit/injections.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/routes/router.gr.dart' as app_router;
import 'package:private_fit/presentation/routes/routes_observer.dart';

class PrivateFitApp extends StatelessWidget {
  PrivateFitApp({super.key});

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: false,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: MultiBlocProvider(
        providers: [
          BlocProvider(
            create: (context) => getIt<OnBoardingBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<OpenFoodBloc>(),
          ),
          BlocProvider(
            create: (context) => getIt<SettingsBloc>(),
            child: Container(),
          )
        ],
        child: AnimatedTheme(
          curve: Curves.easeInOut,
          duration: const Duration(milliseconds: 300),
          data: FlexThemeData.light(
            scheme: FlexScheme.blueWhale,
            visualDensity: VisualDensity.standard,
            useMaterial3: true,
          ),
        ),
      ),
    );
  }
}
