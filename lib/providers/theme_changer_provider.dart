import 'package:flutter/material.dart';

class ThemeChangerProvider with ChangeNotifier {
  var _themeMode = ThemeMode.light;

  ThemeMode get getThemeMode => _themeMode;

  void setTheme(getThemeMode) { 
    _themeMode = getThemeMode;
    notifyListeners();
  }
}
