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

import '../../infrastructure/scan/scan_page.dart' as _i4;
import '../home/home_page.dart' as _i1;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/open_food_page.dart' as _i3;
import '../splash/splash_widgets/on_boarding/on_boarding/initial_route.dart'
    as _i5;

class Router extends _i6.RootStackRouter {
  Router([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    OpenFoodPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.OpenFoodPage());
    },
    ScanPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i4.ScanPage());
    },
    OnBoardingRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.OnBoarding());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i6.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i6.RouteConfig(OpenFoodPageRoute.name, path: '/open-food-page'),
        _i6.RouteConfig(ScanPageRoute.name, path: '/'),
        _i6.RouteConfig(OnBoardingRoute.name, path: '/on-boarding')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i6.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.OpenFoodPage]
class OpenFoodPageRoute extends _i6.PageRouteInfo<void> {
  const OpenFoodPageRoute()
      : super(OpenFoodPageRoute.name, path: '/open-food-page');

  static const String name = 'OpenFoodPageRoute';
}

/// generated route for
/// [_i4.ScanPage]
class ScanPageRoute extends _i6.PageRouteInfo<void> {
  const ScanPageRoute() : super(ScanPageRoute.name, path: '/');

  static const String name = 'ScanPageRoute';
}

/// generated route for
/// [_i5.OnBoarding]
class OnBoardingRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/on-boarding');

  static const String name = 'OnBoardingRoute';
}
