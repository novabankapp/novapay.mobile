import 'package:auto_route/annotations.dart';
import 'package:auto_route/auto_route.dart';
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart';
import 'package:nave_app/app/ui/screens/home/home_screen.dart';
import 'package:nave_app/app/ui/screens/landing_page_screen.dart';
import 'package:nave_app/app/ui/screens/services/services_screen.dart';
import 'package:nave_app/app/ui/screens/transactions/generate_trn_screen.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';


@AutoRouterConfig(replaceInRouteName: 'Screen,Route')
class AppRouter extends $AppRouter {

  @override
  List<AutoRoute> get routes => [
    /// routes go here
    AutoRoute(
      page: ServicesRoute.page,
      initial: false,
    ),
    AutoRoute(
      page: HomeRoute.page,
      initial: false,
    ),
    AutoRoute(
        page: LoginRoute.page,
        initial: false
    ),
    AutoRoute(
        path:"/registration-screen",
        page: RegistrationRoute.page,
        initial: false
    ),
    AutoRoute(
        page: EnterCodeRoute.page,
        initial: false
    ),
    AutoRoute(
        page: RecoverPasswordRoute.page,
        initial: false
    ),
    AutoRoute(
        page: EnterCodeRoute.page,
        initial: false
    ),
    AutoRoute(
      path: "/landing-page-screen",
      page: LandingRoute.page,
      initial: true,
    ),
    AutoRoute(
      page: GenerateTRNRoute.page,
      initial: false,
    ),
    AutoRoute(
      page: ValidateCustomerReferenceRoute.page,
      initial: false,
    ),
    AutoRoute(
      page: ChangePasswordRoute.page,
      initial: false,
    ),
    AutoRoute(
      page: ResetPasswordRoute.page,
      initial: false,
    ),
    AutoRoute(
      path: "/generate-trn/:categoryId",
      page: GenerateTRNRoute.page,
      initial: false,
    ),
  ];
}


