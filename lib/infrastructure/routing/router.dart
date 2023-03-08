import 'package:auto_route/annotations.dart';
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart';
import 'package:nave_app/app/ui/screens/services/services_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [

    AutoRoute(
        page: ServicesScreen,
        initial: true,
    ),
    AutoRoute(
      page: LoginScreen
    ),
  ],
)
class $AppRouter {}

