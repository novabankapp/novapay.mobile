import 'package:auto_route/annotations.dart';
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart';
import 'package:nave_app/app/ui/screens/home/home_screen.dart';
import 'package:nave_app/app/ui/screens/landing_page_screen.dart';
import 'package:nave_app/app/ui/screens/services/services_screen.dart';
import 'package:nave_app/app/ui/screens/transactions/generate_trn_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [

    AutoRoute(
        page: ServicesScreen,
        initial: false,
    ),
    AutoRoute(
      page: HomeScreen,
      initial: false,
    ),
    AutoRoute(
      page: LoginScreen
    ),
    AutoRoute(
        page: LandingScreen,
        initial: false,
    ),
    AutoRoute(
      page: GenerateTRNScreen,
      initial: true,
    ),
  ],
)
class $AppRouter {}

