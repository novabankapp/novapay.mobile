
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/auth/change_password_request.dart';
import 'package:nave_app/data/remote/models/auth/login/google_login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_response.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/data/remote/services/authentication_api_provider.dart';
import 'package:nave_app/domain/entities/user.dart';

import '../../domain/repositories/authentication_repository.dart';



class AuthenticationRepositoryImpl implements AuthenticationRepository{
  final AuthenticationApiProvider _authenticationApiProvider;

  AuthenticationRepositoryImpl(this._authenticationApiProvider);

  @override
  Future<LoginResponseWrapper> authenticate({required String email,required String password}) {
      return _authenticationApiProvider.login(LoginRequest(email: email, password: password));

  }

  @override
  Future<GeneralResponse> forgotPassword(String email) {
    return _authenticationApiProvider.sendEmailAddress(email);
  }

  @override
  Future<User> getCurrentUser() {
    // TODO: implement getCurrentUser
    throw UnimplementedError();
  }

  @override
  Future<bool> isAuthenticated() {
    // TODO: implement isAuthenticated
    throw UnimplementedError();
  }

  @override
  Future<void> logout() {
    // TODO: implement logout
    throw UnimplementedError();
  }

  @override
  Future<RegistrationResponseWrapper> register({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password})  {
      return  _authenticationApiProvider.register(RegistrationRequest(
          fullName: fullName,
          email: email,
          password: password,
          phoneNumber: phoneNumber));

  }

  @override
  Future<LoginResponseWrapper> socialSignin(
      {required String email,
      required phoneNumber,
      required fullName,
      required bool emailVerified,
      required String token,
      required String photo}
      )  {
       return _authenticationApiProvider.googleLogin(GoogleLoginRequest(email: email,
           phoneNumber: phoneNumber, fullName: fullName, emailVerified: emailVerified, token: token, photo: photo));

  }

  @override
  Future<SendCodeResponse> verifyCode(SendCodeRequest request) {
     return _authenticationApiProvider.sendCode(request);
  }

  @override
  Future<GeneralResponse> sendCodeToEmail(String email) {
     return _authenticationApiProvider.sendEmailAddress(email);
  }

  @override
  Future<LoginResponseWrapper> resetPassword(ResetPasswordRequest request) {
    return _authenticationApiProvider.resetPassword(request);
  }

  @override
  Future<GeneralResponse> changePassword(ChangePasswordRequest request) {
    return _authenticationApiProvider.changePassword(request);
  }

}