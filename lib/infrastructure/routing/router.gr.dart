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
import 'package:auto_route/auto_route.dart' as _i6;
import 'package:flutter/material.dart' as _i7;

import '../../app/ui/screens/authentication/login/login_screen.dart' as _i3;
import '../../app/ui/screens/home/home_screen.dart' as _i2;
import '../../app/ui/screens/landing_page_screen.dart' as _i4;
import '../../app/ui/screens/services/services_screen.dart' as _i1;
import '../../app/ui/screens/transactions/generate_trn_screen.dart' as _i5;

class AppRouter extends _i6.RootStackRouter {
  AppRouter([_i7.GlobalKey<_i7.NavigatorState>? navigatorKey])
      : super(navigatorKey);

  @override
  final Map<String, _i6.PageFactory> pagesMap = {
    ServicesRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i1.ServicesScreen());
    },
    HomeRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i2.HomeScreen());
    },
    LoginRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i3.LoginScreen());
    },
    LandingRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: _i4.LandingScreen());
    },
    GenerateTRNRoute.name: (routeData) {
      return _i6.MaterialPageX<dynamic>(
          routeData: routeData, child: const _i5.GenerateTRNScreen());
    }
  };

  @override
  List<_i6.RouteConfig> get routes => [
        _i6.RouteConfig(ServicesRoute.name, path: '/services-screen'),
        _i6.RouteConfig(HomeRoute.name, path: '/home-screen'),
        _i6.RouteConfig(LoginRoute.name, path: '/login-screen'),
        _i6.RouteConfig(LandingRoute.name, path: '/landing-screen'),
        _i6.RouteConfig(GenerateTRNRoute.name, path: '/')
      ];
}

/// generated route for
/// [_i1.ServicesScreen]
class ServicesRoute extends _i6.PageRouteInfo<void> {
  const ServicesRoute() : super(ServicesRoute.name, path: '/services-screen');

  static const String name = 'ServicesRoute';
}

/// generated route for
/// [_i2.HomeScreen]
class HomeRoute extends _i6.PageRouteInfo<void> {
  const HomeRoute() : super(HomeRoute.name, path: '/home-screen');

  static const String name = 'HomeRoute';
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i6.PageRouteInfo<void> {
  const LoginRoute() : super(LoginRoute.name, path: '/login-screen');

  static const String name = 'LoginRoute';
}

/// generated route for
/// [_i4.LandingScreen]
class LandingRoute extends _i6.PageRouteInfo<void> {
  const LandingRoute() : super(LandingRoute.name, path: '/landing-screen');

  static const String name = 'LandingRoute';
}

/// generated route for
/// [_i5.GenerateTRNScreen]
class GenerateTRNRoute extends _i6.PageRouteInfo<void> {
  const GenerateTRNRoute() : super(GenerateTRNRoute.name, path: '/');

  static const String name = 'GenerateTRNRoute';
}
