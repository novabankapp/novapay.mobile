import 'package:equatable/equatable.dart';

abstract class SendCodeState extends Equatable {
  const SendCodeState();

  @override
  List<Object> get props => [];
}

//confirmation code
class SendCodeSuccess extends SendCodeState {
  const SendCodeSuccess();
}

class SendCodeInitial extends SendCodeState {
  const SendCodeInitial();
}

class SendCodeFailure extends SendCodeState {
  const SendCodeFailure();
}

class SendCodeLoading extends SendCodeState {
  const SendCodeLoading();
}