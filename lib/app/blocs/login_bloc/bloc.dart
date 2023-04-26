

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/login_bloc/states.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';
import 'package:nave_app/infrastructure/helpers/shared_preferences_helper.dart';

import 'events.dart';

@injectable
class LoginBloc extends Bloc<LoginEvent,LoginState>{
  final AuthenticationRepository _repository;
  final SharedPreferenceHelper _sharedPreferenceHelper;

  LoginBloc(this._repository, this._sharedPreferenceHelper) : super(const LoginInitial()){
    on<LoginEvent>(_onLoginPressed);
  }
  Future<void> _onLoginPressed(LoginEvent event, Emitter<LoginState> emit)async {
      emit(const LoginLoading());

    try {
      final response = await _repository.authenticate(email: event.email, password:event.password);

      if (response.response.success) {
        _sharedPreferenceHelper.saveIsLoggedIn(true);
        _sharedPreferenceHelper.saveToken(response.response.token);
        _sharedPreferenceHelper.saveRefreshToken(response.response.token);
         emit(const LoginSuccess());
      } else {
        emit(const LoginFailure());
      }
    } on Exception {
      emit(const LoginFailure());
    }
  }



}