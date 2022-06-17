// import 'package:atsign_location_app/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';

import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/routes/router.gr.dart' as app_router;
import 'package:private_fit/presentation/routes/routes_observer.dart';
import 'package:private_fit/presentation/themes/themes.dart';

class PrivateFitApp extends StatelessWidget {
  PrivateFitApp({
    super.key,
  });
  final _appRouter = app_router.Router();

  @override
  Widget build(BuildContext context) {
    // final _appRouter = app_router.Router();
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: const SystemUiOverlayStyle(
        statusBarColor: Colors.transparent,
        statusBarBrightness: Brightness.dark,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarColor: Colors.transparent,
        systemNavigationBarIconBrightness: Brightness.light,
        // systemNavigationBarContrastEnforced: false,
        systemNavigationBarDividerColor: Colors.transparent,
      ),
      child: MaterialApp.router(
        title: 'Priv@teFit',
        debugShowCheckedModeBanner: false,
        localizationsDelegates: const [
          AppLocalizations.delegate,
          GlobalMaterialLocalizations.delegate,
        ],
        supportedLocales: AppLocalizations.supportedLocales,
        routerDelegate: AutoRouterDelegate(
          _appRouter,
          navigatorObservers: () => [ArriveRouteObserver()],
        ),
        routeInformationParser: _appRouter.defaultRouteParser(),
        builder: (context, router) => router!,
        theme: Themes.lightTheme,
      ),
    );
  }
}
