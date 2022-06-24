// import 'package:atsign_location_app/l10n/l10n.dart';
import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider/provider.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:private_fit/infrastructure/scan/continuous_scan_model.dart';
import 'package:private_fit/infrastructure/scan/user_preferences.dart';
import 'package:private_fit/l10n/l10n.dart';
import 'package:private_fit/presentation/routes/router.gr.dart' as app_router;
import 'package:private_fit/presentation/routes/routes_observer.dart';
import 'package:private_fit/presentation/themes/themes.dart';

class PrivateFitApp extends StatefulWidget {
  PrivateFitApp({
    super.key,
  });

  @override
  State<PrivateFitApp> createState() => _PrivateFitAppState();
}

class _PrivateFitAppState extends State<PrivateFitApp> {
  final _appRouter = app_router.Router();

  final ContinuousScanModel _continuousScanModel = ContinuousScanModel();

  late UserPreferences _userPreferences;

  @override
  void initState() {
    _init();
    super.initState();
  }

  Future<void> _init() async {
    _userPreferences = await UserPreferences.getUserPreferences();
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
      child: MultiProvider(
        providers: [
          // provide<UserPreferences>(_userPreferences),
          // Provider<ContinuousScanModel>(_continuousScanModel),
          ChangeNotifierProvider<ContinuousScanModel>(
            create: (_) => _continuousScanModel,
          ),

          // ChangeNotifierProvider<T> provide<T extends ChangeNotifier>(T value) =>
          // ChangeNotifierProvider<T>(create: (BuildContext context) => value);
          Provider<UserPreferences>(
            create: (_) => _userPreferences,
          ),
        ],
        child: MaterialApp.router(
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
          theme: Themes.lightTheme,
        ),
      ),
    );
  }
}
