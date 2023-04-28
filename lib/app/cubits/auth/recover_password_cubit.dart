import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:nave_app/data/remote/models/auth/change_password_request.dart';
import 'package:nave_app/data/remote/models/auth/login/login_response_wrapper.dart';
import 'package:nave_app/data/remote/models/auth/login/reset_password_request.dart';
import 'package:nave_app/data/remote/models/general_response.dart';
import 'package:nave_app/domain/repositories/authentication_repository.dart';
import 'package:nave_app/infrastructure/helpers/shared_preferences_helper.dart';


@Injectable()
class RecoverPasswordCubit extends Cubit<GeneralResponse?> {
  final AuthenticationRepository _repository;
  RecoverPasswordCubit(this._repository) : super(null);

  void sendCodeToEmail(String email) async {
    var response = await _repository.sendCodeToEmail(email);
    emit(response);
  }
  void changePassword(ChangePasswordRequest request) async {
    var response = await _repository.changePassword(request);
    emit(response);
  }


}
@Injectable()
class ResetPasswordCubit extends Cubit<LoginResponseWrapper?>{
  final AuthenticationRepository _repository;
  final SharedPreferenceHelper _sharedPreferenceHelper;
  ResetPasswordCubit(this._repository, this._sharedPreferenceHelper) : super(null);
  void changePassword(ResetPasswordRequest request) async {
    try {
      var response = await _repository.resetPassword(request);
      if (response.response.success) {
        _sharedPreferenceHelper.saveIsLoggedIn(true);
        _sharedPreferenceHelper.saveToken(response.response.token);
        _sharedPreferenceHelper.saveRefreshToken(response.response.token);
      }
      emit(response);
    }
    on Exception {
      emit(null);
    }
  }
}