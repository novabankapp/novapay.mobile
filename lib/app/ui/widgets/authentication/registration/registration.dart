

import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
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

class Registration extends StatefulWidget {


  const Registration({
    Key? key,

  }) : super(key: key);

  @override
  State<Registration> createState() => _RegistrationState();
}

class _RegistrationState extends State<Registration> {

  final _formKey = GlobalKey<FormState>();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  final _confirmPasswordController = TextEditingController();
  final _fullNameController = TextEditingController();
  final _phoneNumberController = TextEditingController();
  bool _isButtonDisabled = false;
  String _password = '';
  String _username= '';
  String _fullName = '';
  String _confirmPassword = '';
  String _phoneNumber = '';

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
                "Register",
                style: TextStyle(fontWeight: FontWeight.bold, fontSize: 24,color: ColorConstants.kPrimaryColor),
              ),
              SizedBox(height: size.height * 0.03),
              SvgPicture.asset(
                "assets/svgs/signup.svg",
                height: size.height * 0.15,
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
                hintText: "Your fullname",
                textInputAction : TextInputAction.next,
                icon :  const Icon(
                  Icons.person,
                  color: ColorConstants.kPrimaryColor,
                ),
                onChanged: (value) {},
                controller : _fullNameController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your fullname';
                  }

                  return null;
                },
                onSaved: (String? value) {
                  _fullName = value!;
                },
              ),
              RoundedInputField(
                hintText: "Your Phone number",
                textInputAction : TextInputAction.next,
                icon :  const Icon(
                  Icons.phone,
                  color: ColorConstants.kPrimaryColor,
                ),
                onChanged: (value) {},
                controller : _phoneNumberController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter your phone number';
                  }

                  return null;
                },
                onSaved: (String? value) {
                  _phoneNumber = value!;
                },
              ),
              RoundedInputField(
                icon :  const Icon(
                  Icons.password,
                  color: ColorConstants.kPrimaryColor,
                ),
                onChanged: (value) {},
                textInputAction : TextInputAction.done,
                hintText:"Your Password",
                isPassword: true,
                controller: _passwordController,
                validator: (value) {
                  if (value!.isEmpty) {
                    return 'Please enter password';
                  }
                  return null;
                },
                onSaved: (String? value) {
                  _password = value!;
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
                  _confirmPassword = value!;
                },
              ),

              BlocConsumer<RegistrationBloc, RegistrationState>(
                  listener: (context, state) {
                    if (state is RegistrationFailure) {
                      _btnController.error();
                    }
                    else if(state is RegistrationInitial){
                      _btnController.success();
                    }
                  },
                  builder: (context, state) {
                    if (state is RegistrationLoading) {
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
                          _registerButtonPressed(context);
                        }
                        else{
                          _btnController.stop();
                        }

                      },
                      child: const Text('Register', style: TextStyle( color:  ColorConstants.kWhiteColor),),
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
                            text: "Register with Google",
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
                login: false,
                press: () {
                  //Navigator.pushNamed(context, RouteGenerator.signupPage);
                  context.pushRoute(const LoginRoute());
                },
              ),
              SizedBox(height: size.height * 0.03),

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
  void _registerButtonPressed(BuildContext context) {
    context.read<RegistrationBloc>().add(
        RegistrationButtonPressed(email: _username,
            password: _password, phoneNumber: _phoneNumber, fullName: _fullName)
    );

  }
}