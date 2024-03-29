

import 'package:equatable/equatable.dart';

abstract class LoginState extends Equatable{
  const LoginState();

  @override
  List<Object> get props => [];
}
class LoginInitial extends LoginState {
  const LoginInitial();
}


class LoginLoading extends LoginState {
  const LoginLoading();
}

class LoginFailure extends LoginState {
  const LoginFailure();
}
class LoginSuccess extends LoginState {
  const LoginSuccess();
}