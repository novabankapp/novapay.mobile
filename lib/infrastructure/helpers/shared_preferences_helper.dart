
import 'package:injectable/injectable.dart';
import 'package:nave_app/infrastructure/di/injection.dart';
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/auth_constants.dart';
import '../constants/theme_constants.dart';

@injectable
class SharedPreferenceHelper {
  // shared pref instance
  final SharedPreferences _sharedPreference;
  //final _sharedPreference = locator<SharedPreferences>();
  // constructor
  SharedPreferenceHelper(this._sharedPreference);



  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {

    return _sharedPreference.getBool(AuthConstants.IS_LOGGED_IN) ?? false;

  }
  Future<void> saveIsLoggedIn(bool value) async {
    _sharedPreference.setBool(AuthConstants.IS_LOGGED_IN, value);

  }

  //registration
  Future<bool> get isRegistered async {
    return _sharedPreference.getBool(AuthConstants.IS_REGISTERED) ?? false;
  }
  Future<void> saveIsRegistration(bool value) async {
    _sharedPreference.setBool(AuthConstants.IS_REGISTERED, value);

  }

  Future<String> get token async {
    return _sharedPreference.getString(AuthConstants.TOKEN) ?? "";

  }

  Future<void> saveRefreshToken(String value) async {
     _sharedPreference.setString(AuthConstants.REFRESH_TOKEN, value);

  }

  Future<void> saveToken(String value) async {
    _sharedPreference.setString(AuthConstants.TOKEN, value);

}
  Future<String>  getName() async {

    var str = _sharedPreference.getString(AuthConstants.NAME) ?? "";

    return str;

  }

  Future<String> get name async {

      var str = _sharedPreference.getString(AuthConstants.NAME) ?? "";
      return str;

  }

  Future<void> saveName(String value) async {
     _sharedPreference.setString(AuthConstants.NAME, value);

  }



  // Theme:------------------------------------------------------
 bool get isDarkMode {
    return _sharedPreference.getBool(ThemeConstants.IS_DARK_MODE) ?? false;

  }

  Future<void> changeBrightnessToDark(bool value) async{
    _sharedPreference.setBool(ThemeConstants.IS_DARK_MODE, value);

  }


}