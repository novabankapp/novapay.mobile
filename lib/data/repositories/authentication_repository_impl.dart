
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/auth/registration_request.dart';
import 'package:nave_app/data/remote/services/authentication_api_provider.dart';
import 'package:nave_app/domain/entities/user.dart';

import '../../domain/repositories/authentication_repository.dart';


@Injectable(as: AuthenticationRepository)
class AuthenticationRepositoryImpl implements AuthenticationRepository{
  final AuthenticationApiProvider _authenticationApiProvider;

  AuthenticationRepositoryImpl(this._authenticationApiProvider);

  @override
  Future<bool> authenticate({required String email,required String password}) {
    // TODO: implement authenticate
    throw UnimplementedError();
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
  Future<bool?> register({
    required String fullName,
    required String email,
    required String phoneNumber,
    required String password}) async {
      var response = await _authenticationApiProvider.register(RegistrationRequest(
          fullName: fullName,
          email: email,
          password: password,
          phoneNumber: phoneNumber));
      return response.success;
  }

}