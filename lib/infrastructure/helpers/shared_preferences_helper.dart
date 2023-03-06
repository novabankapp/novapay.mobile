
import 'package:shared_preferences/shared_preferences.dart';

import '../constants/auth_constants.dart';
import '../constants/theme_constants.dart';

class SharedPreferenceHelper {
  // shared pref instance
  final Future<SharedPreferences> _sharedPreference;

  // constructor
  SharedPreferenceHelper(this._sharedPreference);



  // Login:---------------------------------------------------------------------
  Future<bool> get isLoggedIn async {
    return _sharedPreference.then((preference) {
      return preference.getBool(AuthConstants.IS_LOGGED_IN) ?? false;
    });
  }
  Future<void> saveIsLoggedIn(bool value) async {
    return _sharedPreference.then((preference) {
      preference.setBool(AuthConstants.IS_LOGGED_IN, value);
    });
  }

  //registration
  Future<bool> get isRegistered async {
    return _sharedPreference.then((preference) {
      return preference.getBool(AuthConstants.IS_REGISTERED) ?? false;
    });
  }
  Future<void> saveIsRegistration(bool value) async {
    return _sharedPreference.then((preference) {
      preference.setBool(AuthConstants.IS_REGISTERED, value);
    });
  }

  Future<String> get token async {
    return _sharedPreference.then((preference){
          return preference.getString(AuthConstants.TOKEN) ?? "";
    });
  }

  Future<void> saveToken(String value) async {
    return _sharedPreference.then((preference){
          preference.setString(AuthConstants.TOKEN, value);
  });
}
  Future<String>  getName() async {
    var pref = await _sharedPreference;
    var str = pref.getString(AuthConstants.NAME) ?? "";

    return str;

  }

  Future<String> get name async {
    return _sharedPreference.then((preference){
      var str = preference.getString(AuthConstants.NAME) ?? "";
      return str;
    });
  }

  Future<void> saveName(String value) async {
    return _sharedPreference.then((preference){
      preference.setString(AuthConstants.NAME, value);
    });
  }



  // Theme:------------------------------------------------------
  Future<bool> get isDarkMode {
    return _sharedPreference.then((prefs) {
      return prefs.getBool(ThemeConstants.IS_DARK_MODE) ?? false;
    });
  }

  Future<void> changeBrightnessToDark(bool value) {
    return _sharedPreference.then((prefs) {
     prefs.setBool(ThemeConstants.IS_DARK_MODE, value);
    });
  }


}