

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/registration_bloc/states.dart';
import 'package:nave_app/data/hive/user_hive.dart';
import 'package:nave_app/domain/entities/user.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';
import 'package:nave_app/infrastructure/helpers/shared_preferences_helper.dart';

import 'events.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent,RegistrationState>{
  final AuthenticationRepository _repository;
  final UserHive _userHive;
  final SharedPreferenceHelper _sharedPreferenceHelper;
  RegistrationBloc(this._repository, this._sharedPreferenceHelper, this._userHive) : super(const RegistrationInitial()){
    on<RegistrationEvent>(_onRegistrationPressed);
  }
  Future<void> _onRegistrationPressed(RegistrationEvent event, Emitter<RegistrationState> emit)async {
    emit(const RegistrationLoading());

    try {
      final response = await _repository.register(fullName: event.fullName, email: event.email, phoneNumber: event.phoneNumber, password: event.password);
      if (response.response.success) {
        _sharedPreferenceHelper.saveIsLoggedIn(true);
        _sharedPreferenceHelper.saveName(event.fullName);
        _sharedPreferenceHelper.saveIsRegistration(true);
        _sharedPreferenceHelper.saveToken(response.response.token);
        _sharedPreferenceHelper.saveRefreshToken(response.response.token);
        _userHive.addType(User(fullName: event.fullName, uid: response.response.user?.id ?? "", email: event.email));
        emit(const RegistrationSuccess());
      } else {
        emit(const RegistrationFailure());
      }
    } on Exception {
      emit(const RegistrationFailure());
    }
  }



}

@injectable
class GoogleRegistrationBloc extends Bloc<GoogleRegistrationEvent,GoogleRegistrationState>{
  final AuthenticationRepository _repository;

  GoogleRegistrationBloc(this._repository) : super(const GoogleRegistrationInitial()){
    on<GoogleRegistrationEvent>(_onRegistrationPressed);
  }
  Future<void> _onRegistrationPressed(GoogleRegistrationEvent event, Emitter<GoogleRegistrationState> emit)async {
    emit(const GoogleRegistrationLoading());

    try {
      final response = await _repository.socialSignin(fullName: event.fullName, email: event.email, phoneNumber: event.phoneNumber, emailVerified: event.emailVerified, token: event.token, photo: event.photo);
      if (response.success ?? false) {
        emit(const GoogleRegistrationSuccess());
      } else {
        emit(const GoogleRegistrationFailure());
      }
    } on Exception {
      emit(const GoogleRegistrationFailure());
    }
  }



}