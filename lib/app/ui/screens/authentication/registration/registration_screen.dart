
import 'package:auto_route/annotations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/login_bloc/bloc.dart';
import 'package:nave_app/app/blocs/registration_bloc/bloc.dart';
import 'package:nave_app/app/ui/widgets/authentication/login/login.dart';
import 'package:nave_app/app/ui/widgets/authentication/registration/registration.dart';
import 'package:nave_app/infrastructure/di/injection.dart';
@RoutePage()
class RegistrationScreen extends StatelessWidget {

  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body:  MultiBlocProvider(
          providers: [
            BlocProvider<RegistrationBloc>(
              create: (context) =>  locator<RegistrationBloc>(),

            ),
            BlocProvider<GoogleRegistrationBloc>(
              create: (context) =>  locator<GoogleRegistrationBloc>(),

            )
          ],
          child:const Registration(),
        )

    );
  }
}