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
import 'package:auto_route/auto_route.dart' as _i4;
import 'package:flutter/material.dart' as _i5;

import '../../app/ui/screens/authentication/login/login_screen.dart' as _i3;
import '../../app/ui/screens/home/home_screen.dart' as _i2;
import '../../app/ui/screens/services/services_screen.dart' as _i1;

class AppRouter extends _i4.RootStackRouter {
  AppRouter([_i5.GlobalKey<_i5.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i4.PageFactory> pagesMap = {
    ServicesRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ServicesScreen());
    },
    HomeRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    LoginRoute.name: (routeData) {
      return _i4.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginScreen());
    }
  };

  @override
  List<_i4.RouteConfig> get routes => [
        _i4.RouteConfig(ServicesRoute.name, path: '/services-screen'),
        _i4.RouteConfig(HomeRoute.name, path: '/'),
        _i4.RouteConfig(LoginRoute.name, path: '/login-screen')
      ];
}

/// generated route for
/// [_i1.ServicesScreen]
class ServicesRoute extends _i4.PageRouteInfo<void> {
  const ServicesRoute() : super(ServicesRoute.name, path: '/services-screen');

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i4.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i4.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}
