

import 'package:shared_preferences/shared_preferences.dart';

import '../../helpers/shared_preference_key.dart';
typedef LanguageChangeHandler = Function(String language);
class Application {
  Application._();
  static String? language; // Current language
  static LanguageChangeHandler? onAppLanguageChanged;


  // Shared Prefs
  static SharedPreferences? get sharedPreferences => _sharedPreferences;
  static SharedPreferences? _sharedPreferences; // Shared Preferences

  static Future<void> setupSharedPreferences() async {
    _sharedPreferences = await SharedPreferences.getInstance();
  }

  static Future<void> setLanguageFromSharedPrefs() async {
    bool? issetKey = sharedPreferences?.containsKey(SharedPreferencesKeys.appLanguage);
    if (language == null && issetKey!) {
      language = sharedPreferences?.getString(SharedPreferencesKeys.appLanguage);
    }
  }
}