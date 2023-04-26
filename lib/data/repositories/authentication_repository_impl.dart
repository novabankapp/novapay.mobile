
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/auth/login/google_login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_request.dart';
import 'package:nave_app/data/remote/models/auth/registration/registration_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';
import 'package:nave_app/data/remote/models/auth/send_code_response.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/data/remote/services/authentication_api_provider.dart';
import 'package:nave_app/domain/entities/user.dart';

import '../../domain/repositories/authentication_repository.dart';


@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository{
  final AuthenticationApiProvider _authenticationApiProvider;

  AuthenticationRepositoryImpl(this._authenticationApiProvider);

  @override
  Future<LoginResponseWrapper> authenticate({required String email,required String password}) {
      return _authenticationApiProvider.login(LoginRequest(email: email, password: password));

  }

  @override
  Future<void> forgotPassword(String email) {
    // TODO: implement forgotPassword
    throw UnimplementedError();
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
    required String password}) async {
      return await _authenticationApiProvider.register(RegistrationRequest(
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
      ) async {
       return await _authenticationApiProvider.googleLogin(GoogleLoginRequest(email: email,
           phoneNumber: phoneNumber, fullName: fullName, emailVerified: emailVerified, token: token, photo: photo));

  }

  @override
  Future<SendCodeResponse> sendCode(SendCodeRequest request) {
     return _authenticationApiProvider.sendCode(request);
  }

  @override
  Future<GeneralResponse> sendEmailAddress(String email) {
     return _authenticationApiProvider.sendEmailAddress(email);
  }

}