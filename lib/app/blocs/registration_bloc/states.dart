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
class GoogleRegistrationInitial extends GoogleRegistrationState {
  const GoogleRegistrationInitial();
}


class GoogleRegistrationLoading extends GoogleRegistrationState {
  const GoogleRegistrationLoading();
}
class GoogleRegistrationFailure extends GoogleRegistrationState {
  const GoogleRegistrationFailure();
}