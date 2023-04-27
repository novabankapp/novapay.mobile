


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
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';
import 'package:validators/validators.dart' as validator;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class ResetPassword extends StatefulWidget {
  const ResetPassword({super.key});

  @override
  _ResetPasswordState createState() => _ResetPasswordState();
}

class _ResetPasswordState extends State<ResetPassword> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final ResetPasswordRequest _resetPasswordRequest = ResetPasswordRequest();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<ResetPasswordCubit, LoginResponseWrapper?>(
        listener:(context, state) {

          if (State is LoginResponseWrapper) {
            var response = state;
            if(response != null){
                if(response.response.success){
                  //Future.delayed(Duration.zero, () => "12345");
                  ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        backgroundColor: ColorConstants.kTealColor,
                        duration: Duration(seconds: 5),
                        content: Text("Password reset",
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
                      "RESET PASSWORD",
                      style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstants.kPrimaryColor),
                    ),
                    const Text(
                      "enter the code you received in your mail to finish registration",
                      style: TextStyle( color: ColorConstants.kPrimaryColor),
                    ),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/svgs/enter_code.svg",
                      height: size.height * 0.25,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "Enter Code",
                      textInputAction : TextInputAction.done,
                      icon :  const Icon(
                        Icons.confirmation_number,
                        color: ColorConstants.kPrimaryColor,
                      ),
                      onChanged: (value) {},
                      controller : _codeController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter the code you received in your mailbox';
                        }
                        /*if(!validator.isEmail(value)){
                        return "Please enter a valid Code";
                      }*/
                        return null;
                      },
                      onSaved: (String? value) {
                        _resetPasswordRequest.code = value;
                      },
                    ),
                    RoundedInputField(
                      onChanged: (value) {},
                      icon :  const Icon(
                        Icons.password,
                        color: ColorConstants.kPrimaryColor,
                      ),
                      textInputAction : TextInputAction.done,
                      hintText:"Your Password",
                      isPassword: true,
                      controller: _passwordController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address';
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        _resetPasswordRequest.password = value!;
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
                          _resetPasswordRequest.userId = "user id here";
                           _resetPassword(context, _resetPasswordRequest);
                        }
                        else{
                          _btnController.stop();
                        }

                      },
                      child: const Text('Submit', style: TextStyle( color:  Colors.white),),
                    ),

                    SizedBox(height: size.height * 0.05),

                    BlocConsumer<RecoverPasswordCubit, GeneralResponse>(
                        listener: (context, state) {
                          if (State is GeneralResponse) {
                            var response = state;
                            ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(
                                  backgroundColor: ColorConstants.kTealColor,
                                  duration: const Duration(seconds: 5),
                                  content: Text(response!.message!,
                                    textAlign: TextAlign.center,),
                                ));

                          }
                        },
                        builder: (context, state) {
                          return GestureDetector(
                            onTap: (){
                               _resendCode(context, "");
                            },
                            child: const Text(
                              "Resend Code",
                              style: TextStyle(
                                color: ColorConstants.kPrimaryColor,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          );
                        }
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }
  void _resetPassword(BuildContext context, ResetPasswordRequest request) {
    context.read<ResetPasswordCubit>().changePassword(request);
  }
  void _resendCode(BuildContext context, String email) {
    context.read<RecoverPasswordCubit>().sendCodeToEmail(email);
  }
}
