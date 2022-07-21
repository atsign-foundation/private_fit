import 'package:auto_route/annotations.dart';
import 'package:injectable/injectable.dart';
import 'package:private_fit/infrastructure/menstrual/calendar.dart';
import 'package:private_fit/presentation/home/home_navigator.dart';
import 'package:private_fit/presentation/menstrual/menstrual_page.dart';
import 'package:private_fit/presentation/on_boarding/on_boarding_page.dart';
import 'package:private_fit/presentation/open_food/scanner_page.dart';
import 'package:private_fit/presentation/settings/settings_page.dart';
import 'package:private_fit/presentation/splash/splash_widgets/on_boarding/on_boarding/initial_route.dart';

/*
Using Auto route helps a lot in  navigation it allows for strongly-typed
arguments passing , effortless deep-linking and it uses code generation to
simplify routes setup

This will eliminated the boilerplate and a need to to use named/generated
routes and you’ll end up writing a lot of boilerplate code for mediator argument
classes, checking for required arguments, extracting arguments and a bunch of 
other stuff. AutoRoute does all that for you and much more.
*/
@singleton
@CupertinoAutoRouter(
  routes: <AutoRoute>[
    // AutoRoute<dynamic>(page: OnBoarding),

    AutoRoute<dynamic>(page: HomeNavigator),
    AutoRoute<dynamic>(page: OnBoardingPage),
    AutoRoute<dynamic>(page: ScannerPage),
    AutoRoute<dynamic>(page: SettingsPage),
    AutoRoute<dynamic>(page: MenstrualPage),
    AutoRoute<dynamic>(page: Calender),
    AutoRoute<dynamic>(page: OnBoarding, initial: true),
  ],
)
class $Router {}
