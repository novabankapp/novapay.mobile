import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import 'package:nave_app/data/remote/models/auth/send_code_request.dart';

abstract class SendCodeEvent extends Equatable {
  final SendCodeRequest code;

  const SendCodeEvent(this.code);

  @override
  List<Object> get props => [code];
}

class SendCodeButtonPressed extends SendCodeEvent {
  const SendCodeButtonPressed(
      {required SendCodeRequest code})
      : super(code);
}
