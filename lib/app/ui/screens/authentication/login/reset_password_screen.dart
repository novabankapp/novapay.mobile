import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/send_code_bloc/bloc.dart';
import 'package:nave_app/app/cubits/auth/recover_password_cubit.dart';
import 'package:nave_app/app/ui/widgets/authentication/enter_code.dart';
import 'package:nave_app/app/ui/widgets/authentication/login/reset_password.dart';
import 'package:nave_app/infrastructure/di/injection.dart';

@RoutePage()
class ResetPasswordScreen extends StatelessWidget {

  const ResetPasswordScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body:  MultiBlocProvider(
          providers: [
            BlocProvider<RecoverPasswordCubit>(
              create: (context) =>  locator<RecoverPasswordCubit>(),

            ),
            BlocProvider<ResetPasswordCubit>(
              create: (context) =>  locator<ResetPasswordCubit>(),

            ),

          ],
          child:const ResetPassword(),
        )

    );

  }
}
