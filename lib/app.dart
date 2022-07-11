// import 'package:atsign_location_app/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/routes/router.gr.dart' as app_router;
import 'package:private_fit/presentation/routes/routes_observer.dart';
import 'package:private_fit/presentation/themes/themes.dart';

class PrivateFitApp extends StatefulWidget {
  const PrivateFitApp({super.key});

  @override
  State<PrivateFitApp> createState() => _PrivateFitAppState();
}

class _PrivateFitAppState extends State<PrivateFitApp> {
  final _appRouter = app_router.Router();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
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
      child: Theme(
        data: FlexThemeData.light(
            scheme: FlexScheme.blueWhale, useMaterial3: true,),
        child: CupertinoApp.router(
          title: 'Priv@te Fit',
          debugShowCheckedModeBanner: false,
          localizationsDelegates: const [
            AppLocalizations.delegate,
            GlobalMaterialLocalizations.delegate,
          ],
          supportedLocales: AppLocalizations.supportedLocales,
          routerDelegate: AutoRouterDelegate(
            _appRouter,
            navigatorObservers: () => [PrivateFitRouteObserver()],
          ),
          routeInformationParser: _appRouter.defaultRouteParser(),
          builder: (context, router) => router!,
          // theme: FlexThemeData.light(scheme: FlexScheme.blue),
        ),
      ),
    );
  }
}
