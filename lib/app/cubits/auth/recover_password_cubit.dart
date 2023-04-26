import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';


@Injectable()
class RecoverPasswordCubit extends Cubit<GeneralResponse> {
  final AuthenticationRepository _repository;
  RecoverPasswordCubit(this._repository) : super(GeneralResponse());

  void sendCodeToEmail(String email) async {
    var response = await _repository.sendCodeToEmail(email);
    emit(response);
  }
  void changePassword(String password) async {
    var response = await _repository.sendCodeToEmail(password);
    emit(response);
  }

}