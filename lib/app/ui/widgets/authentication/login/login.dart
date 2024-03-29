

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:nave_app/app/blocs/registration_bloc/bloc.dart';
import 'package:nave_app/app/blocs/registration_bloc/events.dart';
import 'package:nave_app/app/blocs/registration_bloc/states.dart';
import 'package:nave_app/app/ui/widgets/common/google_rounded_button.dart';
import 'package:nave_app/infrastructure/helpers/authentication.dart';
import 'package:nave_app/infrastructure/routing/router.gr.dart';
import 'package:validators/validators.dart' as validator;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';
import 'package:nave_app/app/blocs/login_bloc/bloc.dart';
import 'package:nave_app/app/blocs/login_bloc/events.dart';
import 'package:nave_app/app/blocs/login_bloc/states.dart';
import 'package:nave_app/app/ui/widgets/authentication/already_have_an_account_check.dart';
import 'package:nave_app/app/ui/widgets/common/background.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:rounded_loading_button/rounded_loading_button.dart';

class Login extends StatefulWidget {


  const Login({
    Key? key,

  }) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isButtonDisabled = false;
  String _password = '';
  String _username= '';

  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {



    Size size = MediaQuery.of(context).size;


    return Background(
      child: SingleChildScrollView(
        child: Form(
          key: _formKey,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              const Text(
                "LOGIN",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24, color: ColorConstants.kPrimaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/svgs/signup.svg",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.03),
              RoundedInputField(
                hintText: "Your Email",
                textInputAction : TextInputAction.next,
                icon :  const Icon(
                  Icons.email,
                  color: ColorConstants.kPrimaryColor,
                ),
                onChanged: (value) {},
                controller : _emailController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your email address';
                  }
                  if(!validator.isEmail(value)){
                    return "Please enter a valid email address";
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _username = value!;
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
                    return 'Please enter your password';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _password = value!;
                },
              ),

              BlocConsumer<LoginBloc, LoginState>(
                  listener: (context, state) {
                    if (state is LoginFailure) {
                      _btnController.error();
                    }
                    else if(state is LoginInitial){
                      _btnController.success();
                    }
                    else if(state is LoginSuccess){
                      _btnController.success();
                      AutoRouter.of(context).replaceAll([const HomeRoute()]);
                    }
                  },
                  builder: (context, state) {
                    if (state is LoginLoading) {
                      //return const CircularProgressIndicator();
                      //_btnController.stop();
                      _isButtonDisabled = true;
                    }
                    return  RoundedLoadingButton(
                      borderRadius: 10,
                      width: size.width * 0.8,
                      color: ColorConstants.kPrimaryColor,
                      controller: _btnController,
                      onPressed: _isButtonDisabled  ? null : () {
                        if (_formKey.currentState!.validate()) {
                          _loginButtonPressed(context);
                        }
                        else{
                          _btnController.stop();
                        }

                      },
                      child: const Text('Login', style: TextStyle( color:  ColorConstants.kWhiteColor),),
                    );
                  }
              ),
              SizedBox(height: size.height * 0.01),

              FutureBuilder(
                future: Authentication.initializeFirebase(context: context),
                builder: (context, snapshot) {
                  return BlocConsumer<GoogleRegistrationBloc, GoogleRegistrationState>(
                      listener: (context, state) {
                        if (state is GoogleRegistrationFailure) {

                        }
                        else if(state is GoogleRegistrationInitial){

                        }
                        else if(state is GoogleRegistrationSuccess){
                          AutoRouter.of(context).replaceAll([const HomeRoute()]);
                        }
                      },
                      builder: (context, state) {
                        if (state is GoogleRegistrationLoading) {
                          return const CircularProgressIndicator(
                            valueColor: AlwaysStoppedAnimation<Color>(
                              ColorConstants.kPrimaryColor,
                            ),
                          );
                        }
                        if (snapshot.hasError) {
                          return Text('Error initializing Firebase ${snapshot.error}');
                        } else if (snapshot.connectionState == ConnectionState.done) {
                          return  GoogleRoundedButton(
                            text: "Login with Google",
                            press: state is GoogleRegistrationLoading ? null : () async{
                              try {
                                var user = await Authentication.signInWithGoogle();
                                if(user != null){
                                  var email = user.email;
                                  var name = user.displayName;
                                  var phoneNumber = user.phoneNumber;
                                  var token = user.refreshToken;
                                  var verified = user.emailVerified;
                                  var tenantId = user.tenantId;
                                  var photo = user.photoURL;
                                  var id = user.uid;
                                  if (context.mounted) {
                                    _googleLoginPressed(context: context,
                                        email: email ?? "",
                                        phoneNumber: phoneNumber,
                                        fullName: name,
                                        emailVerified: verified,
                                        token: token ?? "",
                                        photo: photo ?? "");
                                  }
                                }

                              }
                              catch(e){

                              }

                            },
                          );
                        }
                        return const CircularProgressIndicator(
                          valueColor: AlwaysStoppedAnimation<Color>(
                            ColorConstants.kPrimaryColor,
                          ),
                        );
                      }
                  );
                },
              ),

              AlreadyHaveAnAccountCheck(
                press: () {
                  //Navigator.pushNamed(context, RouteGenerator.signupPage);
                  context.pushRoute(const RegistrationRoute());
                },
              ),
              SizedBox(height: size.height * 0.03),
              GestureDetector(
                onTap: (){
                  //Navigator.pushNamed(context, RouteGenerator.recoverPasswordPage);
                  context.pushRoute(const RecoverPasswordRoute());
                },
                child: const Text(
                  "Forgot Password?",
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



 void _googleLoginPressed (
      {required BuildContext context,
       required String email,
       required phoneNumber,
       required fullName,
       required bool emailVerified,
       required String token,
       required String photo}
     ){
       context.read<GoogleRegistrationBloc>().add(
         GoogleRegistrationButtonPressed(email: email,
             phoneNumber: phoneNumber,
             fullName: fullName,
             emailVerified: emailVerified,
             token: token,
             photo: photo)
       );
 }
  void _loginButtonPressed(BuildContext context) {
    context.read<LoginBloc>().add(
        LoginButtonPressed(email: _username, password: _password)
    );

  }
}