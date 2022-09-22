// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

import 'package:auto_route/auto_route.dart' as _i11;
import 'package:flutter/material.dart' as _i12;
import 'package:openfoodfacts/openfoodfacts.dart' as _i13;

import '../home/home_navigator.dart' as _i1;
import '../menstrual/menstrual_page.dart' as _i4;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/product_cards/nutrition_page_loaded.dart' as _i8;
import '../open_food/scanner_page.dart' as _i3;
import '../open_food/scanner_view.dart' as _i9;
import '../sign_in/loading_screen.dart' as _i5;
import '../sign_in/login_view.dart' as _i7;
import '../sign_in/widgets/error_widget.dart' as _i6;
import '../splash/splash_widgets/on_boarding/on_boarding/initial_route.dart'
    as _i10;

class Router extends _i11.RootStackRouter {
  Router([_i12.GlobalKey<_i12.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i11.PageFactory> pagesMap = {
    HomeNavigatorRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i1.HomeNavigator());
    },
    OnBoardingPageRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i2.OnBoardingPage());
    },
    ScannerPageRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i3.ScannerPage());
    },
    MenstrualPageRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.MenstrualPage());
    },
    LoadingScreenRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.LoadingScreen());
    },
    ErrorOboardingRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.ErrorOboarding());
    },
    LoginViewRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i7.LoginView());
    },
    FDARoute.name: (routeData) {
      final args = routeData.argsAs<FDARouteArgs>();
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i8.FDA(key: args.key, fetchedProduct: args.fetchedProduct));
    },
    OnInitialStateRoute.name: (routeData) {
      final args = routeData.argsAs<OnInitialStateRouteArgs>();
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i9.OnInitialState(key: args.key, i10n: args.i10n));
    },
    OnBoardingRoute.name: (routeData) {
      return _i11.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i10.OnBoarding());
    }
  };

  @override
  List<_i11.RouteConfig> get routes => [
        _i11.RouteConfig(HomeNavigatorRoute.name, path: '/home-navigator'),
        _i11.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i11.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i11.RouteConfig(MenstrualPageRoute.name, path: '/menstrual-page'),
        _i11.RouteConfig(LoadingScreenRoute.name, path: '/loading-screen'),
        _i11.RouteConfig(ErrorOboardingRoute.name, path: '/error-oboarding'),
        _i11.RouteConfig(LoginViewRoute.name, path: '/login-view'),
        _i11.RouteConfig(FDARoute.name, path: '/f-dA'),
        _i11.RouteConfig(OnInitialStateRoute.name, path: '/on-initial-state'),
        _i11.RouteConfig(OnBoardingRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.HomeNavigator]
class HomeNavigatorRoute extends _i11.PageRouteInfo<void> {
  const HomeNavigatorRoute()
      : super(HomeNavigatorRoute.name, path: '/home-navigator');

  static const String name = 'HomeNavigatorRoute';
}

/// generated route for
/// [_i2.OnBoardingPage]
class OnBoardingPageRoute extends _i11.PageRouteInfo<void> {
  const OnBoardingPageRoute()
      : super(OnBoardingPageRoute.name, path: '/on-boarding-page');

  static const String name = 'OnBoardingPageRoute';
}

/// generated route for
/// [_i3.ScannerPage]
class ScannerPageRoute extends _i11.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i4.MenstrualPage]
class MenstrualPageRoute extends _i11.PageRouteInfo<void> {
  const MenstrualPageRoute()
      : super(MenstrualPageRoute.name, path: '/menstrual-page');

  static const String name = 'MenstrualPageRoute';
}

/// generated route for
/// [_i5.LoadingScreen]
class LoadingScreenRoute extends _i11.PageRouteInfo<void> {
  const LoadingScreenRoute()
      : super(LoadingScreenRoute.name, path: '/loading-screen');

  static const String name = 'LoadingScreenRoute';
}

/// generated route for
/// [_i6.ErrorOboarding]
class ErrorOboardingRoute extends _i11.PageRouteInfo<void> {
  const ErrorOboardingRoute()
      : super(ErrorOboardingRoute.name, path: '/error-oboarding');

  static const String name = 'ErrorOboardingRoute';
}

/// generated route for
/// [_i7.LoginView]
class LoginViewRoute extends _i11.PageRouteInfo<void> {
  const LoginViewRoute() : super(LoginViewRoute.name, path: '/login-view');

  static const String name = 'LoginViewRoute';
}

/// generated route for
/// [_i8.FDA]
class FDARoute extends _i11.PageRouteInfo<FDARouteArgs> {
  FDARoute({_i12.Key? key, required _i13.Product fetchedProduct})
      : super(FDARoute.name,
            path: '/f-dA',
            args: FDARouteArgs(key: key, fetchedProduct: fetchedProduct));

  static const String name = 'FDARoute';
}

class FDARouteArgs {
  const FDARouteArgs({this.key, required this.fetchedProduct});

  final _i12.Key? key;

  final _i13.Product fetchedProduct;

  @override
  String toString() {
    return 'FDARouteArgs{key: $key, fetchedProduct: $fetchedProduct}';
  }
}

/// generated route for
/// [_i9.OnInitialState]
class OnInitialStateRoute extends _i11.PageRouteInfo<OnInitialStateRouteArgs> {
  OnInitialStateRoute({_i12.Key? key, required dynamic i10n})
      : super(OnInitialStateRoute.name,
            path: '/on-initial-state',
            args: OnInitialStateRouteArgs(key: key, i10n: i10n));

  static const String name = 'OnInitialStateRoute';
}

class OnInitialStateRouteArgs {
  const OnInitialStateRouteArgs({this.key, required this.i10n});

  final _i12.Key? key;

  final dynamic i10n;

  @override
  String toString() {
    return 'OnInitialStateRouteArgs{key: $key, i10n: $i10n}';
  }
}

/// generated route for
/// [_i10.OnBoarding]
class OnBoardingRoute extends _i11.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}
