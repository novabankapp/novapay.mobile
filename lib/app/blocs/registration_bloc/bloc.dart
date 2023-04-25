

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/app/blocs/registration_bloc/states.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';

import 'events.dart';

@injectable
class RegistrationBloc extends Bloc<RegistrationEvent,RegistrationState>{
  final AuthenticationRepository _repository;

  RegistrationBloc(this._repository) : super(const RegistrationInitial()){
    on<RegistrationEvent>(_onRegistrationPressed);
  }
  Future<void> _onRegistrationPressed(RegistrationEvent event, Emitter<RegistrationState> emit)async {
    emit(const RegistrationLoading());

    try {
      final success = await _repository.register(fullName: event.fullName, email: event.email, phoneNumber: event.phoneNumber, password: event.password);
      if(success == null){
        emit(const RegistrationFailure());
      }
      else if (success) {
        emit(const RegistrationInitial());
      } else {
        emit(const RegistrationFailure());
      }
    } on Exception {
      emit(const RegistrationFailure());
    }
  }



}