
import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_response.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {

  Future<GeneralResponse> sendCodeToEmail(String email);

  Future<RegistrationResponseWrapper> register(
      {required String fullName,
      required String email,
      required String phoneNumber,
      required String password});
  Future<LoginResponseWrapper> socialSignin(
      {
      required String email,
      required phoneNumber,
      required fullName,
      required bool emailVerified,
      required String token,
      required String photo});

  Future<LoginResponseWrapper> authenticate(
      {required String email, required String password});

  Future<SendCodeResponse> verifyCode(SendCodeRequest request);

  Future<bool> isAuthenticated();


  Future<User> getCurrentUser();


  Future<GeneralResponse> forgotPassword(String email);


  Future<void> logout();
}
