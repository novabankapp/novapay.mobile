import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/cubits/auth/recover_password_cubit.dart';
import 'package:nave_app/app/ui/widgets/authentication/login/recover_password.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

@RoutePage()
class RecoverPasswordScreen extends StatelessWidget {

  const RecoverPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        body: BlocProvider<RecoverPasswordCubit>(
            create: (context) =>  locator<RecoverPasswordCubit>(),
            child:RecoverPassword()
        )

    );
  }
}
