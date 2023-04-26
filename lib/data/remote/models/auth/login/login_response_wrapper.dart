import 'package:nave_app/data/remote/models/auth/login/login_response.dart';

class LoginResponseWrapper{
  LoginResponse response;
  bool? success;
  LoginResponseWrapper({required this.response, this.success});
}