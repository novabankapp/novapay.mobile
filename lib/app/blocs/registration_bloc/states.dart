import 'package:equatable/equatable.dart';

abstract class RegistrationState extends Equatable{
  const RegistrationState();

  @override
  List<Object> get props => [];
}
class RegistrationInitial extends RegistrationState {
  const RegistrationInitial();
}


class RegistrationLoading extends RegistrationState {
  const RegistrationLoading();
}

class RegistrationFailure extends RegistrationState {
  const RegistrationFailure();
}

abstract class GoogleRegistrationState extends Equatable{
  const GoogleRegistrationState();

  @override
  List<Object> get props => [];
}
class GoogleRegistrationInitial extends RegistrationState {
  const GoogleRegistrationInitial();
}


class GoogleRegistrationLoading extends RegistrationState {
  const GoogleRegistrationLoading();
}
class GoogleRegistrationFailure extends RegistrationState {
  const GoogleRegistrationFailure();
}