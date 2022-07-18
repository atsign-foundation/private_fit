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

import '../../domain/open_food/open_food_fetched_product.dart' as _i11;
import '../../infrastructure/menstrual/calendar.dart' as _i7;
import '../home/home_navigator.dart' as _i1;
import '../menstrual/menstrual_page.dart' as _i6;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/product_details_view.dart' as _i3;
import '../open_food/scanner_page.dart' as _i4;
import '../settings/settings_page.dart' as _i5;
import '../splash/splash_widgets/on_boarding/on_boarding/initial_route.dart'
    as _i8;

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
    ProductDetailsViewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsViewRouteArgs>();
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailsView(
              key: args.key, fetchedProduct: args.fetchedProduct));
    },
    ScannerPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.ScannerPage());
    },
    SettingsPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i5.SettingsPage());
    },
    MenstrualPageRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i6.MenstrualPage());
    },
    CalenderRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: _i7.Calender());
    },
    OnBoardingRoute.name: (routeData) {
      return _i9.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i8.OnBoarding());
    }
  };

  @override
  List<_i9.RouteConfig> get routes => [
        _i9.RouteConfig(HomeNavigatorRoute.name, path: '/home-navigator'),
        _i9.RouteConfig(OnBoardingPageRoute.name, path: '/on-boarding-page'),
        _i9.RouteConfig(ProductDetailsViewRoute.name,
            path: '/product-details-view'),
        _i9.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i9.RouteConfig(SettingsPageRoute.name, path: '/settings-page'),
        _i9.RouteConfig(MenstrualPageRoute.name, path: '/menstrual-page'),
        _i9.RouteConfig(CalenderRoute.name, path: '/Calender'),
        _i9.RouteConfig(OnBoardingRoute.name, path: '/')
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
/// [_i3.ProductDetailsView]
class ProductDetailsViewRoute
    extends _i9.PageRouteInfo<ProductDetailsViewRouteArgs> {
  ProductDetailsViewRoute(
      {_i10.Key? key, required _i11.FetchedProduct fetchedProduct})
      : super(ProductDetailsViewRoute.name,
            path: '/product-details-view',
            args: ProductDetailsViewRouteArgs(
                key: key, fetchedProduct: fetchedProduct));

  static const String name = 'ProductDetailsViewRoute';
}

class ProductDetailsViewRouteArgs {
  const ProductDetailsViewRouteArgs({this.key, required this.fetchedProduct});

  final _i10.Key? key;

  final _i11.FetchedProduct fetchedProduct;

  @override
  String toString() {
    return 'ProductDetailsViewRouteArgs{key: $key, fetchedProduct: $fetchedProduct}';
  }
}

/// generated route for
/// [_i4.ScannerPage]
class ScannerPageRoute extends _i9.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i5.SettingsPage]
class SettingsPageRoute extends _i9.PageRouteInfo<void> {
  const SettingsPageRoute()
      : super(SettingsPageRoute.name, path: '/settings-page');

  static const String name = 'SettingsPageRoute';
}

/// generated route for
/// [_i6.MenstrualPage]
class MenstrualPageRoute extends _i9.PageRouteInfo<void> {
  const MenstrualPageRoute()
      : super(MenstrualPageRoute.name, path: '/menstrual-page');

  static const String name = 'MenstrualPageRoute';
}

/// generated route for
/// [_i7.Calender]
class CalenderRoute extends _i9.PageRouteInfo<void> {
  const CalenderRoute() : super(CalenderRoute.name, path: '/Calender');

  static const String name = 'CalenderRoute';
}

/// generated route for
/// [_i8.OnBoarding]
class OnBoardingRoute extends _i9.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}
