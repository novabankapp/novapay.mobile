


import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nave_app/app/blocs/send_code_bloc/bloc.dart';
import 'package:nave_app/app/blocs/send_code_bloc/events.dart';
import 'package:nave_app/app/blocs/send_code_bloc/states.dart';
import 'package:nave_app/app/ui/widgets/common/background.dart';
import 'package:nave_app/app/ui/widgets/common/rounded_input_field.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/infrastructure/constants/colors.dart';
import 'package:validators/validators.dart' as validator;
import 'package:rounded_loading_button/rounded_loading_button.dart';

class EnterCode extends StatefulWidget {
  const EnterCode({super.key});

  @override
  _EnterCodeState createState() => _EnterCodeState();
}

class _EnterCodeState extends State<EnterCode> {
  final _formKey = GlobalKey<FormState>();
  final _codeController = TextEditingController();
  final SendCodeRequest _sendCodeRequest = SendCodeRequest();
  final RoundedLoadingButtonController _btnController = RoundedLoadingButtonController();
  @override
  void dispose() {
    _btnController.stop();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return BlocConsumer<SendCodeBloc, SendCodeState>(
        listener:(context, state) {

          if (state is SendCodeFailure) {
            _btnController.error();
            _btnController.stop();
          }
          else if(state is SendCodeSuccess){
            _btnController.success();

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
                    Text(
                      "ENTER CODE",
                      style: TextStyle(fontWeight: FontWeight.bold, color: ColorConstants.kPrimaryColor),
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
                        _sendCodeRequest.code = value;
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
                          _sendCodeRequest.userId = "user id here";
                          _sendCodeButtonPressed(context, _sendCodeRequest);
                        }
                        else{
                          _btnController.stop();
                        }

                      },
                      child: const Text('Submit', style: TextStyle( color:  Colors.white),),
                    ),

                    SizedBox(height: size.height * 0.05),

                    GestureDetector(
                      onTap: (){

                      },
                      child: const Text(
                        "Resend Code",
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
  void _sendCodeButtonPressed(BuildContext context, SendCodeRequest request) {
    context.read<SendCodeBloc>().add(
        SendCodeButtonPressed(code:request)
    );

  }
}
