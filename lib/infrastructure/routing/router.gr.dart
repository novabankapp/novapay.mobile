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

import '../../app/ui/screens/authentication/login/login_screen.dart' as _i3;
import '../../app/ui/screens/home/home_screen.dart' as _i2;
import '../../app/ui/screens/landing_page_screen.dart' as _i4;
import '../../app/ui/screens/services/services_screen.dart' as _i1;

class AppRouter extends _i5.RootStackRouter {
  AppRouter([_i6.GlobalKey<_i6.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i5.PageFactory> pagesMap = {
    ServicesRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ServicesScreen());
    },
    HomeRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    LoginRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginScreen());
    },
    LandingRoute.name: (routeData) {
      return _i5.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LandingScreen());
    }
  };

  @override
  List<_i5.RouteConfig> get routes => [
        _i5.RouteConfig(ServicesRoute.name, path: '/services-screen'),
        _i5.RouteConfig(HomeRoute.name, path: '/home-screen'),
        _i5.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i5.RouteConfig(LandingRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.ServicesScreen]
class ServicesRoute extends _i5.PageRouteInfo<void> {
  const ServicesRoute() : super(ServicesRoute.name, path: '/services-screen');

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i5.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-screen');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i5.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.LandingScreen]
class LandingRoute extends _i5.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/');

  static const String name = 'LandingRoute';
}
