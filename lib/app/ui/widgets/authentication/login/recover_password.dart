


import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/cubits/auth/recover_password_cubit.dart';
import 'package:nave_app/app/ui/widgets/common/background.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';
import 'package:validators/validators.dart' as validator;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class RecoverPassword extends StatefulWidget {
  @override
  _RecoverPasswordState createState() => _RecoverPasswordState();
}

class _RecoverPasswordState extends State<RecoverPassword> {
  final _formKey = GlobalKey<FormState>();
  String _email = "";
  GeneralResponse? _response ;
  final _emailController = TextEditingController();
  final RoundedLoadingButtonController _btnController = new RoundedLoadingButtonController();

  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery
        .of(context)
        .size;
    return BlocConsumer<RecoverPasswordCubit, GeneralResponse>(
        listener: (context, state) {
          if (State is GeneralResponse) {
            _response = state;
            if (_response?.success == true) {
              _btnController.success();
              context.pushRoute(const EnterCodeRoute());
            }
            else {
              _btnController.error();
              ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                backgroundColor : ColorConstants.kTealColor,
                duration: const Duration(seconds: 2),
                content: Text(_response!.message!,
                  textAlign: TextAlign.center,),
              ));
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
                      "RECOVER PASSWORD",
                      style: TextStyle(fontWeight: FontWeight.bold,
                          fontSize: 24,
                          color: ColorConstants.kPrimaryColor),
                    ),
                    SizedBox(height: size.height * 0.03),
                    SvgPicture.asset(
                      "assets/svgs/forgot_password.svg",
                      height: size.height * 0.35,
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedInputField(
                      hintText: "Your Email",
                      textInputAction : TextInputAction.done,
                      icon: const Icon(Icons.email,
                        color: ColorConstants.kPrimaryColor),
                      onChanged: (value) {},
                      controller: _emailController,
                      validator: (value) {
                        if (value!.isEmpty) {
                          return 'Please enter your email address';
                        }
                        if (!validator.isEmail(value)) {
                          return "Please enter a valid email address";
                        }
                        return null;
                      },
                      onSaved: (String? value) {
                        _email = value!;
                      },
                    ),
                    SizedBox(height: size.height * 0.03),
                    RoundedLoadingButton(
                      width: size.width * 0.8,
                      borderRadius: 10,
                      color: ColorConstants.kPrimaryColor,
                      controller: _btnController,
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                          _sendEmailButtonPressed(context, _email);
                        }
                        else {
                          _btnController.stop();
                        }
                      },
                      child: const Text(
                        'Submit', style: TextStyle(color: Colors.white),),
                    ),

                    SizedBox(height: size.height * 0.05),

                    GestureDetector(
                      onTap: () {
                        context.pushRoute(const LoginRoute());
                      },
                      child: const Text(
                        "Go to Login",
                        style: TextStyle(
                          color: ColorConstants.kPrimaryColor,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
          );
        }
    );
  }

  void _sendEmailButtonPressed(BuildContext context, String email) {
    context.read<RecoverPasswordCubit>().sendCodeToEmail(email);
  }
}
