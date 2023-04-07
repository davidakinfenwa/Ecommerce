// **************************************************************************
// AutoRouteGenerator
// **************************************************************************

// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouteGenerator
// **************************************************************************
//
// ignore_for_file: type=lint

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i5;
import 'package:flutter/material.dart' as _i6;

import '../../presentation/screen/auth/sign_in_page.dart' as _i2;
import '../../presentation/screen/food_details.dart' as _i4;
import '../../presentation/screen/screens.dart' as _i1;
import '../../presentation/screen/tab_screens/tab_screens.dart' as _i3;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    SplashScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i1.SplashScreen()),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    StartScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i1.StartScreen(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    SignInPageRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i5.WrappedRoute(child: const _i2.SignInPage()),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    TabScreenRoute.name: (routeData) {
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: const _i3.TabScreen(),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
    FoodDetailScreenRoute.name: (routeData) {
      final args = routeData.argsAs<FoodDetailScreenRouteArgs>();
      return _i5.CustomPage<dynamic>(
        routeData: routeData,
        child: _i4.FoodDetailScreen(
          key: args.key,
          desc: args.desc,
          name: args.name,
        ),
        transitionsBuilder: _i5.TransitionsBuilders.fadeIn,
        durationInMilliseconds: 300,
        opaque: true,
        barrierDismissible: false,
      );
    },
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(
          SplashScreenRoute.name,
          path: '/',
        ),
        _i5.RouteConfig(
          StartScreenRoute.name,
          path: '/start-screen',
        ),
        _i5.RouteConfig(
          SignInPageRoute.name,
          path: '/sign-in-page',
        ),
        _i5.RouteConfig(
          TabScreenRoute.name,
          path: '/tab-screen',
        ),
        _i5.RouteConfig(
          FoodDetailScreenRoute.name,
          path: '/food-detail-screen',
        ),
      ];
}

/// generated route for
/// [_i1.SplashScreen]
class SplashScreenRoute extends _i5.PageRouteInfo<void> {
  const SplashScreenRoute()
      : super(
          SplashScreenRoute.name,
          path: '/',
        );

  static const String name = 'SplashScreenRoute';
}

/// generated route for
/// [_i1.StartScreen]
class StartScreenRoute extends _i5.PageRouteInfo<void> {
  const StartScreenRoute()
      : super(
          StartScreenRoute.name,
          path: '/start-screen',
        );

  static const String name = 'StartScreenRoute';
}

/// generated route for
/// [_i2.SignInPage]
class SignInPageRoute extends _i5.PageRouteInfo<void> {
  const SignInPageRoute()
      : super(
          SignInPageRoute.name,
          path: '/sign-in-page',
        );

  static const String name = 'SignInPageRoute';
}

/// generated route for
/// [_i3.TabScreen]
class TabScreenRoute extends _i5.PageRouteInfo<void> {
  const TabScreenRoute()
      : super(
          TabScreenRoute.name,
          path: '/tab-screen',
        );

  static const String name = 'TabScreenRoute';
}

/// generated route for
/// [_i4.FoodDetailScreen]
class FoodDetailScreenRoute
    extends _i5.PageRouteInfo<FoodDetailScreenRouteArgs> {
  FoodDetailScreenRoute({
    _i6.Key? key,
    required String desc,
    required String name,
  }) : super(
          FoodDetailScreenRoute.name,
          path: '/food-detail-screen',
          args: FoodDetailScreenRouteArgs(
            key: key,
            desc: desc,
            name: name,
          ),
        );

  static const String name = 'FoodDetailScreenRoute';
}

class FoodDetailScreenRouteArgs {
  const FoodDetailScreenRouteArgs({
    this.key,
    required this.desc,
    required this.name,
  });

  final _i6.Key? key;

  final String desc;

  final String name;

  @override
  String toString() {
    return 'FoodDetailScreenRouteArgs{key: $key, desc: $desc, name: $name}';
  }
}
