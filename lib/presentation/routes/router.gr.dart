// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;

import '../../infrastructure/menstrual/calendar.dart' as _i6;
import '../home/home_navigator.dart' as _i1;
import '../menstrual/menstrual_page.dart' as _i5;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/scanner_page.dart' as _i3;
import '../settings/settings_page.dart' as _i4;
import '../splash/splash_widgets/on_boarding/on_boarding/initial_route.dart'
    as _i7;

class Router extends _i8.RootStackRouter {
  Router([_i9.GlobalKey<_i9.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    HomeNavigatorRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeNavigator());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    ScannerPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ScannerPage());
    },
    SettingsPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.SettingsPage());
    },
    MenstrualPageRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.MenstrualPage());
    },
    CalenderRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.Calender());
    },
    OnBoardingRoute.name: (routeData) {
      return _i8.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.OnBoarding());
    }
  };

  @override
  List<_i8.RouteConfig> get routes => [
        _i8.RouteConfig(HomeNavigatorRoute.name, path: '/home-navigator'),
        _i8.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i8.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i8.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i8.RouteConfig(MenstrualPageRoute.name, path: '/menstrual-page'),
        _i8.RouteConfig(CalenderRoute.name, path: '/Calender'),
        _i8.RouteConfig(OnBoardingRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeNavigator]
class HomeNavigatorRoute extends _i8.PageRouteInfo<void> {
  const HomeNavigatorRoute()
      : super(HomeNavigatorRoute.name, path: '/home-navigator');

  static const String name = 'HomeNavigatorRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i8.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.ScannerPage]
class ScannerPageRoute extends _i8.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i4.SettingsPage]
class SettingsPageRoute extends _i8.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i5.MenstrualPage]
class MenstrualPageRoute extends _i8.PageRouteInfo<void> {
  const MenstrualPageRoute()
      : super(MenstrualPageRoute.name, path: '/menstrual-page');

  static const String name = 'MenstrualPageRoute';
}

/// generated route for
/// [_i6.Calender]
class CalenderRoute extends _i8.PageRouteInfo<void> {
  const CalenderRoute() : super(CalenderRoute.name, path: '/Calender');

  static const String name = 'CalenderRoute';
}

/// generated route for
/// [_i7.OnBoarding]
class OnBoardingRoute extends _i8.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}
