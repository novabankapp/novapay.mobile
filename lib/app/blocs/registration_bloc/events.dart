import 'package:equatable/equatable.dart';

abstract class RegistrationEvent extends Equatable {

  final String fullName;
  final String email;
  final String phoneNumber;
  final String password;
  const RegistrationEvent(this.email, this.password, this.phoneNumber, this.fullName);

  @override
  List<Object> get props => [email, password, phoneNumber, fullName];
}


class RegistrationButtonPressed extends RegistrationEvent {
  const RegistrationButtonPressed(
      {required String email, required String password, required phoneNumber, required fullName})
      : super(email, password, phoneNumber,fullName);
}



abstract class GoogleRegistrationEvent extends Equatable {

  final String fullName;
  final String email;
  final String phoneNumber;
  final bool emailVerified;
  final String token;
  final String photo;
  const GoogleRegistrationEvent(this.email, this.phoneNumber,
      this.fullName, this.emailVerified, this.photo, this.token);

  @override
  List<Object> get props => [email, phoneNumber, fullName, emailVerified, phoneNumber, token];
}

class GoogleRegistrationButtonPressed extends GoogleRegistrationEvent {
  const GoogleRegistrationButtonPressed(
      {
        required String email,
        required phoneNumber,
        required fullName,
        required bool emailVerified,
        required String token,
        required String photo})
      : super(email, phoneNumber,fullName, emailVerified, photo, token);
}
