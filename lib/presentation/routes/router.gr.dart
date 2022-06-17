// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i3;
import 'package:flutter/material.dart' as _i4;

import '../home/home_page.dart' as _i1;
import '../on_boarding/on_boarding_page.dart' as _i2;

class Router extends _i3.RootStackRouter {
  Router([_i4.GlobalKey<_i4.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i3.PageFactory> pagesMap = {
    HomePageRoute.name: (routeData) {
      return _i3.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomePage());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i3.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    }
  };

  @override
  List<_i3.RouteConfig> get routes => [
        _i3.RouteConfig(HomePageRoute.name, path: '/home-page'),
        _i3.RouteConfig(OnBoardingPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomePage]
class HomePageRoute extends _i3.PageRouteInfo<void> {
  const HomePageRoute() : super(HomePageRoute.name, path: '/home-page');

  static const String name = 'HomePageRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i3.PageRouteInfo<void> {
  const OnBoardingPageRoute() : super(OnBoardingPageRoute.name, path: '/');

  static const String name = 'OnBoardingPageRoute';
}
