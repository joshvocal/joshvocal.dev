import 'package:flutter/material.dart';
import 'package:joshvocal_dev/resources/themes.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeNotifier with ChangeNotifier {
  ThemeData _themeData;

  ThemeNotifier(this._themeData);

  ThemeData getTheme() => _themeData;

  void setTheme(ThemeData themeData) async {
    _themeData = themeData;
    notifyListeners();
  }

  void onThemeChanged(bool value, ThemeNotifier themeNotifier) async {
    value
        ? themeNotifier.setTheme(darkTheme)
        : themeNotifier.setTheme(lightTheme);

    SharedPreferences sharedPrefs = await SharedPreferences.getInstance();
    sharedPrefs.setBool('isDarkMode', value);
  }
}
