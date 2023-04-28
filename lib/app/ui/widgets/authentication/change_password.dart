


import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/send_code_bloc/bloc.dart';
import 'package:nave_app/app/blocs/send_code_bloc/events.dart';
import 'package:nave_app/app/blocs/send_code_bloc/states.dart';
import 'package:nave_app/app/cubits/auth/recover_password_cubit.dart';
import 'package:nave_app/app/ui/widgets/common/background.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/data/remote/models/auth/change_password_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';
import 'package:validators/validators.dart' as validator;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ChangePassword extends StatefulWidget {
  const ChangePassword({super.key});

  @override
  _ChangePasswordState createState() => _ChangePasswordState();
}

class _ChangePasswordState extends State<ChangePassword> {
  final _formKey = GlobalKey<FormState>();
  final _oldPasswordController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final ChangePasswordRequest _changePasswordRequest = ChangePasswordRequest();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<RecoverPasswordCubit, GeneralResponse?>(
        listener:(context, state) {

          if (State is GeneralResponse) {
            var response = state;
            if(response != null){
              if(response.success ?? false){
                //Future.delayed(Duration.zero, () => "12345");
                ScaffoldMessenger.of(context).showSnackBar(
                    SnackBar(
                      backgroundColor: ColorConstants.kTealColor,
                      duration: const Duration(seconds: 5),
                      content: Text(response.message ?? "",
                        textAlign: TextAlign.center,),
                    ));
                AutoRouter.of(context).replaceAll([const HomeRoute()]);
              }
            }


          }
        },
        builder: (context, state) {
          return Background(
            child: SingleChildScrollView(
              child: Form(
                key: _formKey,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    const Text(
                      "CHANGE PASSWORD",
                      style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstants.kPrimaryColor),
                    ),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/svgs/login.svg",
                      height: size.height * 0.25,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "Enter Old Password",
                      textInputAction : TextInputAction.done,
                      icon :  const Icon(
                        Icons.confirmation_number,
                        color: ColorConstants.kPrimaryColor,
                      ),
                      onChanged: (value) {},
                      controller : _oldPasswordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your old password';
                        }

                        return null;
                      },
                      onSaved: (String? value) {
                        _changePasswordRequest.oldPassword = value;
                      },
                    ),
                    RoundedInputField(
                      onChanged: (value) {},
                      icon :  const Icon(
                        Icons.password,
                        color: ColorConstants.kPrimaryColor,
                      ),
                      textInputAction : TextInputAction.done,
                      hintText:"Your New Password",
                      isPassword: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your new Password';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        _changePasswordRequest.password = value!;
                      },
                    ),
                    RoundedInputField(
                      icon :  const Icon(
                        Icons.password_outlined,
                        color: ColorConstants.kPrimaryColor,
                      ),
                      onChanged: (value) {},
                      textInputAction : TextInputAction.done,
                      hintText:"Confirm Password",
                      isPassword: true,
                      controller: _confirmPasswordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please confirm password';
                        }
                        if(_passwordController.text != value){
                          return "Password should match";
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        //_confirmPassword = value!;
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedLoadingButton(
                      borderRadius: 10,
                      width: size.width * 0.8,
                      color: ColorConstants.kPrimaryColor,
                      controller: _btnController,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _changePasswordRequest.userId = "user id here";
                          _changePassword(context, _changePasswordRequest);
                        }
                        else{
                          _btnController.stop();
                        }

                      },
                      child: const Text('Submit', style: TextStyle( color:  Colors.white),),
                    ),

                    SizedBox(height: size.height * 0.05),
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  void _changePassword(BuildContext context, ChangePasswordRequest request) {
    context.read<RecoverPasswordCubit>().changePassword(request);
  }

}
