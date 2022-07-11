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

import '../../domain/open_food/open_food_fetched_product.dart' as _i8;
import '../home/home_page.dart' as _i1;
import '../on_boarding/on_boarding_page.dart' as _i2;
import '../open_food/product_details_view.dart' as _i3;
import '../open_food/scanner_page.dart' as _i4;
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
    ProductDetailsViewRoute.name: (routeData) {
      final args = routeData.argsAs<ProductDetailsViewRouteArgs>();
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData,
          child: _i3.ProductDetailsView(
              key: args.key, fetchedProduct: args.fetchedProduct));
    },
    ScannerPageRoute.name: (routeData) {
      return _i6.CupertinoPageX<dynamic>(
          routeData: routeData, child: const _i4.ScannerPage());
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
        _i6.RouteConfig(ProductDetailsViewRoute.name,
            path: '/product-details-view'),
        _i6.RouteConfig(ScannerPageRoute.name, path: '/scanner-page'),
        _i6.RouteConfig(OnBoardingRoute.name, path: '/')
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
/// [_i3.ProductDetailsView]
class ProductDetailsViewRoute
    extends _i6.PageRouteInfo<ProductDetailsViewRouteArgs> {
  ProductDetailsViewRoute(
      {_i7.Key? key, required _i8.FetchedProduct fetchedProduct})
      : super(ProductDetailsViewRoute.name,
            path: '/product-details-view',
            args: ProductDetailsViewRouteArgs(
                key: key, fetchedProduct: fetchedProduct));

  static const String name = 'ProductDetailsViewRoute';
}

class ProductDetailsViewRouteArgs {
  const ProductDetailsViewRouteArgs({this.key, required this.fetchedProduct});

  final _i7.Key? key;

  final _i8.FetchedProduct fetchedProduct;

  @override
  String toString() {
    return 'ProductDetailsViewRouteArgs{key: $key, fetchedProduct: $fetchedProduct}';
  }
}

/// generated route for
/// [_i4.ScannerPage]
class ScannerPageRoute extends _i6.PageRouteInfo<void> {
  const ScannerPageRoute()
      : super(ScannerPageRoute.name, path: '/scanner-page');

  static const String name = 'ScannerPageRoute';
}

/// generated route for
/// [_i5.OnBoarding]
class OnBoardingRoute extends _i6.PageRouteInfo<void> {
  const OnBoardingRoute() : super(OnBoardingRoute.name, path: '/');

  static const String name = 'OnBoardingRoute';
}
