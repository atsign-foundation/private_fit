// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../home/home_navigator.dart' as _i1;
import '../menstrual/menstrual_page.dart' as _i4;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/scanner_page.dart' as _i3;
import '../splash/splash_widgets/on_boarding/on_boarding/initial_route.dart'
    as _i5;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomeNavigatorRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeNavigator());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    ScannerPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ScannerPage());
    },
    MenstrualPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.MenstrualPage());
    },
    OnBoardingRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.OnBoarding());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomeNavigatorRoute.name, path: '/home-navigator'),
        _i6.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i6.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i6.RouteConfig(MenstrualPageRoute.name, path: '/menstrual-page'),
        _i6.RouteConfig(OnBoardingRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeNavigator]
class HomeNavigatorRoute extends _i6.PageRouteInfo<void> {
  const HomeNavigatorRoute()
      : super(HomeNavigatorRoute.name, path: '/home-navigator');

  static const String name = 'HomeNavigatorRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.ScannerPage]
class ScannerPageRoute extends _i6.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i4.MenstrualPage]
class MenstrualPageRoute extends _i6.PageRouteInfo<void> {
  const MenstrualPageRoute()
      : super(MenstrualPageRoute.name, path: '/menstrual-page');

  static const String name = 'MenstrualPageRoute';
}

/// generated route for
/// [_i5.OnBoarding]
class OnBoardingRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}
