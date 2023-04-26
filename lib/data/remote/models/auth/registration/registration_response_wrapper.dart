import 'package:nave_app/data/remote/models/auth/registration/registration_response.dart';

class RegistrationResponseWrapper{
  RegistrationResponse response;
  bool? success;
  RegistrationResponseWrapper({required this.response, this.success});
}