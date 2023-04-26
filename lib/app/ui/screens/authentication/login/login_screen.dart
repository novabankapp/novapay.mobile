

import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/login_bloc/bloc.dart';
import 'package:nave_app/app/blocs/registration_bloc/bloc.dart';
import 'package:nave_app/app/ui/widgets/authentication/login/login.dart';
import 'package:nave_app/infrastructure/di/injection.dart';
@RoutePage()
class LoginScreen extends StatelessWidget {

  const LoginScreen();

  @override
  Widget build(BuildContext context) {

    return Scaffold(
          body:  MultiBlocProvider(
              providers: [
                    BlocProvider<LoginBloc>(
                      create: (context) =>  locator<LoginBloc>(),

                    ),
                    BlocProvider<GoogleRegistrationBloc>(
                      create: (context) =>  locator<GoogleRegistrationBloc>(),

                    )
                ],
            child:const Login(),
          )

    );
  }
}