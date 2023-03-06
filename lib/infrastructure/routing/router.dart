import 'package:auto_route/annotations.dart';
import 'package:nave_app/app/ui/screens/authentication/login/login_screen.dart';

@MaterialAutoRouter(
  replaceInRouteName: 'Screen,Route',
  routes: [

    AutoRoute(
        page: LoginScreen,
        initial: true,
    ),
  ],
)
class $AppRouter {}

