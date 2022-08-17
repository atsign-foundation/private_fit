// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i9;
import 'package:flutter/material.dart' as _i10;

import '../home/home_navigator.dart' as _i1;
import '../menstrual/menstrual_page.dart' as _i4;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/scanner_page.dart' as _i3;
import '../sign_in/loading_screen.dart' as _i5;
import '../sign_in/login_screen_page.dart' as _i8;
import '../sign_in/login_view.dart' as _i7;
import '../sign_in/widgets/error_widget.dart' as _i6;

class Router extends _i9.RootStackRouter {
  Router([_i10.GlobalKey<_i10.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i9.PageFactory> pagesMap = {
    HomeNavigatorRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeNavigator());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    ScannerPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ScannerPage());
    },
    MenstrualPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.MenstrualPage());
    },
    LoadingScreenRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.LoadingScreen());
    },
    ErrorOboardingRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.ErrorOboarding());
    },
    LoginViewRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.LoginView());
    },
    LoginScreenPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.LoginScreenPage());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeNavigatorRoute.name, path: '/home-navigator'),
        _i9.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i9.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i9.RouteConfig(MenstrualPageRoute.name, path: '/menstrual-page'),
        _i9.RouteConfig(LoadingScreenRoute.name, path: '/loading-screen'),
        _i9.RouteConfig(ErrorOboardingRoute.name, path: '/error-oboarding'),
        _i9.RouteConfig(LoginViewRoute.name, path: '/login-view'),
        _i9.RouteConfig(LoginScreenPageRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeNavigator]
class HomeNavigatorRoute extends _i9.PageRouteInfo<void> {
  const HomeNavigatorRoute()
      : super(HomeNavigatorRoute.name, path: '/home-navigator');

  static const String name = 'HomeNavigatorRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.ScannerPage]
class ScannerPageRoute extends _i9.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i4.MenstrualPage]
class MenstrualPageRoute extends _i9.PageRouteInfo<void> {
  const MenstrualPageRoute()
      : super(MenstrualPageRoute.name, path: '/menstrual-page');

  static const String name = 'MenstrualPageRoute';
}

/// generated route for
/// [_i5.LoadingScreen]
class LoadingScreenRoute extends _i9.PageRouteInfo<void> {
  const LoadingScreenRoute()
      : super(LoadingScreenRoute.name, path: '/loading-screen');

  static const String name = 'LoadingScreenRoute';
}

/// generated route for
/// [_i6.ErrorOboarding]
class ErrorOboardingRoute extends _i9.PageRouteInfo<void> {
  const ErrorOboardingRoute()
      : super(ErrorOboardingRoute.name, path: '/error-oboarding');

  static const String name = 'ErrorOboardingRoute';
}

/// generated route for
/// [_i7.LoginView]
class LoginViewRoute extends _i9.PageRouteInfo<void> {
  const LoginViewRoute() : super(LoginViewRoute.name, path: '/login-view');

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i8.LoginScreenPage]
class LoginScreenPageRoute extends _i9.PageRouteInfo<void> {
  const LoginScreenPageRoute() : super(LoginScreenPageRoute.name, path: '/');

  static const String name = 'LoginScreenPageRoute';
}
