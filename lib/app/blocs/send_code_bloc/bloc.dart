import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/send_code_bloc/events.dart';
import 'package:nave_app/app/blocs/send_code_bloc/states.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';


@injectable
class SendCodeBloc extends Bloc<SendCodeEvent, SendCodeState> {
  final AuthenticationRepository _repository;

  SendCodeBloc(this._repository) : super(const SendCodeInitial()){
    on<SendCodeEvent>(_sendCodePressed);
  }



  Future<void> _sendCodePressed(SendCodeEvent event,Emitter<SendCodeState> emit) async {
    emit(const SendCodeLoading());
    try {
      var response = await _repository.sendCode(event.code);

      if (response.success ?? false) {
        emit(const SendCodeSuccess());
      } else {
        emit(const SendCodeFailure());
      }
    } on Exception {
      emit(const SendCodeFailure());
    }
  }
}
