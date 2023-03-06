

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/login_bloc/states.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';

import 'events.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent,LoginState>{
  final AuthenticationRepository _repository;

  LoginBloc(this._repository) : super(const LoginInitial()){
    on<LoginEvent>(_onLoginPressed);
  }
  Future<void> _onLoginPressed(LoginEvent event, Emitter<LoginState> emit)async {
      emit(const LoginLoading());

    try {
      final success = await _repository.authenticate(email: event.email, password:event.password);

      if (success) {
         emit(const LoginInitial());
      } else {
        emit(const LoginFailure());
      }
    } on Exception {
      emit(const LoginFailure());
    }
  }



}