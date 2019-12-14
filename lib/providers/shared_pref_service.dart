import 'package:shared_preferences/shared_preferences.dart';

class SharedPrefsService {
  Future<bool> isDarkMode() async {
    SharedPreferences sharedPreferences = await SharedPreferences.getInstance();
    bool isDarkMode = sharedPreferences.getBool('isDarkMode') ?? true;

    return isDarkMode;
  }

  Future<void> setDarkMode(bool isDarkMode) async {
    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setBool('isDarkMode', isDarkMode);
  }
}
