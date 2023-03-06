
import 'dart:async';

import 'package:flutter/foundation.dart';
import '../entities/user.dart';

abstract class AuthenticationRepository {

  Future<void> register(
      {required String firstName,
      required String lastName,
      required String email,
      required String phoneNumber,
      required String password});

  Future<bool> authenticate(
      {required String email, required String password});


  Future<bool> isAuthenticated();


  Future<User> getCurrentUser();


  Future<void> forgotPassword(String email);


  Future<void> logout();
}
