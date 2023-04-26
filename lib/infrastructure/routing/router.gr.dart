// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i8;
import 'package:flutter/material.dart' as _i9;
import 'package:nave_app/app/ui/screens/authentication/enter_code_screen.dart'
    as _i7;
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart'
    as _i1;
import 'package:nave_app/app/ui/screens/authentication/registration/registration_screen.dart'
    as _i2;
import 'package:nave_app/app/ui/screens/home/home_screen.dart' as _i3;
import 'package:nave_app/app/ui/screens/landing_page_screen.dart' as _i4;
import 'package:nave_app/app/ui/screens/services/services_screen.dart' as _i5;
import 'package:nave_app/app/ui/screens/transactions/generate_trn_screen.dart'
    as _i6;

abstract class $AppRouter extends _i8.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i8.PageFactory> pagesMap = {
    LoginRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i1.LoginScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.RegistrationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i3.HomeScreen(),
      );
    },
    LandingRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i4.LandingScreen(),
      );
    },
    ServicesRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ServicesScreen(),
      );
    },
    GenerateTRNRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<GenerateTRNRouteArgs>(
          orElse: () => GenerateTRNRouteArgs(
              categoryId: pathParams.optString('categoryId')));
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i6.GenerateTRNScreen(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i8.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.EnterCodeScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.LoginScreen]
class LoginRoute extends _i8.PageRouteInfo<void> {
  const LoginRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i2.RegistrationScreen]
class RegistrationRoute extends _i8.PageRouteInfo<void> {
  const RegistrationRoute({List<_i8.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i3.HomeScreen]
class HomeRoute extends _i8.PageRouteInfo<void> {
  const HomeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i4.LandingScreen]
class LandingRoute extends _i8.PageRouteInfo<void> {
  const LandingRoute({List<_i8.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ServicesScreen]
class ServicesRoute extends _i8.PageRouteInfo<void> {
  const ServicesRoute({List<_i8.PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}

/// generated route for
/// [_i6.GenerateTRNScreen]
class GenerateTRNRoute extends _i8.PageRouteInfo<GenerateTRNRouteArgs> {
  GenerateTRNRoute({
    _i9.Key? key,
    String? categoryId,
    List<_i8.PageRouteInfo>? children,
  }) : super(
          GenerateTRNRoute.name,
          args: GenerateTRNRouteArgs(
            key: key,
            categoryId: categoryId,
          ),
          rawPathParams: {'categoryId': categoryId},
          initialChildren: children,
        );

  static const String name = 'GenerateTRNRoute';

  static const _i8.PageInfo<GenerateTRNRouteArgs> page =
      _i8.PageInfo<GenerateTRNRouteArgs>(name);
}

class GenerateTRNRouteArgs {
  const GenerateTRNRouteArgs({
    this.key,
    this.categoryId,
  });

  final _i9.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'GenerateTRNRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i7.EnterCodeScreen]
class EnterCodeRoute extends _i8.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i8.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i8.PageInfo<void> page = _i8.PageInfo<void>(name);
}
