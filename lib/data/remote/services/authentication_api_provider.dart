import 'dart:convert';

import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/clients/api_constants.dart';
import 'package:nave_app/data/remote/clients/base/base_client.dart';
import 'package:nave_app/data/remote/models/auth/login/google_login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_response.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
@Injectable()
class AuthenticationApiProvider {
  final BaseClient _client;

  AuthenticationApiProvider(this._client);

  Future<RegistrationResponseWrapper> register(RegistrationRequest request) async {

    final response = await _client.post(ApiConstants.SIGNUP,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request)
    );
    var successResponse = RegistrationResponse.fromJson(json.decode(response));
    return RegistrationResponseWrapper(response: successResponse, success: true);

  }
  Future<LoginResponseWrapper> login(LoginRequest request) async {

    final response = await _client.post(ApiConstants.SIGNIN,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request)
    );
    var successResponse = LoginResponse.fromJson(json.decode(response));
    return LoginResponseWrapper(response: successResponse, success: true);

  }
  Future<LoginResponseWrapper> resetPassword(ResetPasswordRequest request) async {

    final response = await _client.post(ApiConstants.RESET_PASSWORD,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request)
    );
    var successResponse = LoginResponse.fromJson(json.decode(response));
    return LoginResponseWrapper(response: successResponse, success: true);

  }
  Future<GeneralResponse> sendEmailAddress(String email) async{

    final response = await _client.post(ApiConstants.SENDEMAIL,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body : email
    );

    return GeneralResponse.fromJson(json.decode(response));

  }
  Future<SendCodeResponse> sendCode(SendCodeRequest request) async{
    final response = await _client.post(ApiConstants.SENDCODE,
      headers : <String,String>{
        'Content-Type' : 'application/json',
        'Accept': 'application/json',
      },
    );
    return SendCodeResponse.fromJson(json.decode(response));

  }
  Future<LoginResponseWrapper> googleLogin(GoogleLoginRequest request) async {

    final response = await _client.post(ApiConstants.GOOGLESIGNIN,
        headers : <String,String>{
          'Content-Type' : 'application/json',
          'Accept': 'application/json',
        },
        body: jsonEncode(request)
    );
    var successResponse = LoginResponse.fromJson(json.decode(response));
    return LoginResponseWrapper(response: successResponse, success: true);

  }
}