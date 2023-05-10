// GENERATED CODE - DO NOT MODIFY BY HAND

// **************************************************************************
// AutoRouterGenerator
// **************************************************************************

// ignore_for_file: type=lint
// coverage:ignore-file

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'package:auto_route/auto_route.dart' as _i13;
import 'package:flutter/material.dart' as _i14;
import 'package:nave_app/app/ui/screens/authentication/change_password_screen.dart'
    as _i1;
import 'package:nave_app/app/ui/screens/authentication/enter_code_screen.dart'
    as _i2;
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart'
    as _i3;
import 'package:nave_app/app/ui/screens/authentication/login/recover_password_screen.dart'
    as _i4;
import 'package:nave_app/app/ui/screens/authentication/login/reset_password_screen.dart'
    as _i5;
import 'package:nave_app/app/ui/screens/authentication/registration/registration_screen.dart'
    as _i6;
import 'package:nave_app/app/ui/screens/home/home_screen.dart' as _i7;
import 'package:nave_app/app/ui/screens/in_transit_screen.dart' as _i8;
import 'package:nave_app/app/ui/screens/landing_page_screen.dart' as _i9;
import 'package:nave_app/app/ui/screens/services/services_screen.dart' as _i10;
import 'package:nave_app/app/ui/screens/transactions/generate_trn_screen.dart'
    as _i11;
import 'package:nave_app/app/ui/screens/transactions/validate_customer_reference_screen.dart'
    as _i12;

abstract class $AppRouter extends _i13.RootStackRouter {
  $AppRouter({super.navigatorKey});

  @override
  final Map<String, _i13.PageFactory> pagesMap = {
    ChangePasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i1.ChangePasswordScreen(),
      );
    },
    EnterCodeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i2.EnterCodeScreen(),
      );
    },
    LoginRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i3.LoginScreen(),
      );
    },
    RecoverPasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i4.RecoverPasswordScreen(),
      );
    },
    ResetPasswordRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i5.ResetPasswordScreen(),
      );
    },
    RegistrationRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i6.RegistrationScreen(),
      );
    },
    HomeRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i7.HomeScreen(),
      );
    },
    InTransitRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i8.InTransitScreen(),
      );
    },
    LandingRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i9.LandingScreen(),
      );
    },
    ServicesRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i10.ServicesScreen(),
      );
    },
    GenerateTRNRoute.name: (routeData) {
      final pathParams = routeData.inheritedPathParams;
      final args = routeData.argsAs<GenerateTRNRouteArgs>(
          orElse: () => GenerateTRNRouteArgs(
              categoryId: pathParams.optString('categoryId')));
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: _i11.GenerateTRNScreen(
          key: args.key,
          categoryId: args.categoryId,
        ),
      );
    },
    ValidateCustomerReferenceRoute.name: (routeData) {
      return _i13.AutoRoutePage<dynamic>(
        routeData: routeData,
        child: const _i12.ValidateCustomerReferenceScreen(),
      );
    },
  };
}

/// generated route for
/// [_i1.ChangePasswordScreen]
class ChangePasswordRoute extends _i13.PageRouteInfo<void> {
  const ChangePasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ChangePasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ChangePasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i2.EnterCodeScreen]
class EnterCodeRoute extends _i13.PageRouteInfo<void> {
  const EnterCodeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          EnterCodeRoute.name,
          initialChildren: children,
        );

  static const String name = 'EnterCodeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i3.LoginScreen]
class LoginRoute extends _i13.PageRouteInfo<void> {
  const LoginRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LoginRoute.name,
          initialChildren: children,
        );

  static const String name = 'LoginRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i4.RecoverPasswordScreen]
class RecoverPasswordRoute extends _i13.PageRouteInfo<void> {
  const RecoverPasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RecoverPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'RecoverPasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i5.ResetPasswordScreen]
class ResetPasswordRoute extends _i13.PageRouteInfo<void> {
  const ResetPasswordRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ResetPasswordRoute.name,
          initialChildren: children,
        );

  static const String name = 'ResetPasswordRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i6.RegistrationScreen]
class RegistrationRoute extends _i13.PageRouteInfo<void> {
  const RegistrationRoute({List<_i13.PageRouteInfo>? children})
      : super(
          RegistrationRoute.name,
          initialChildren: children,
        );

  static const String name = 'RegistrationRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i7.HomeScreen]
class HomeRoute extends _i13.PageRouteInfo<void> {
  const HomeRoute({List<_i13.PageRouteInfo>? children})
      : super(
          HomeRoute.name,
          initialChildren: children,
        );

  static const String name = 'HomeRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i8.InTransitScreen]
class InTransitRoute extends _i13.PageRouteInfo<void> {
  const InTransitRoute({List<_i13.PageRouteInfo>? children})
      : super(
          InTransitRoute.name,
          initialChildren: children,
        );

  static const String name = 'InTransitRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i9.LandingScreen]
class LandingRoute extends _i13.PageRouteInfo<void> {
  const LandingRoute({List<_i13.PageRouteInfo>? children})
      : super(
          LandingRoute.name,
          initialChildren: children,
        );

  static const String name = 'LandingRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i10.ServicesScreen]
class ServicesRoute extends _i13.PageRouteInfo<void> {
  const ServicesRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ServicesRoute.name,
          initialChildren: children,
        );

  static const String name = 'ServicesRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}

/// generated route for
/// [_i11.GenerateTRNScreen]
class GenerateTRNRoute extends _i13.PageRouteInfo<GenerateTRNRouteArgs> {
  GenerateTRNRoute({
    _i14.Key? key,
    String? categoryId,
    List<_i13.PageRouteInfo>? children,
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

  static const _i13.PageInfo<GenerateTRNRouteArgs> page =
      _i13.PageInfo<GenerateTRNRouteArgs>(name);
}

class GenerateTRNRouteArgs {
  const GenerateTRNRouteArgs({
    this.key,
    this.categoryId,
  });

  final _i14.Key? key;

  final String? categoryId;

  @override
  String toString() {
    return 'GenerateTRNRouteArgs{key: $key, categoryId: $categoryId}';
  }
}

/// generated route for
/// [_i12.ValidateCustomerReferenceScreen]
class ValidateCustomerReferenceRoute extends _i13.PageRouteInfo<void> {
  const ValidateCustomerReferenceRoute({List<_i13.PageRouteInfo>? children})
      : super(
          ValidateCustomerReferenceRoute.name,
          initialChildren: children,
        );

  static const String name = 'ValidateCustomerReferenceRoute';

  static const _i13.PageInfo<void> page = _i13.PageInfo<void>(name);
}
