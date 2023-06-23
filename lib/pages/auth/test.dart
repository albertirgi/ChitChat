import 'package:flutter/material.dart';

class ThemeProvider with ChangeNotifier {
  bool _isDarkMode = false;

  bool get isDarkMode => _isDarkMode;

  ThemeData getLightTheme() {
    return ThemeData(
      // Define your light theme here
      brightness: Brightness.light,
      // other theme properties
    );
  }

  ThemeData getDarkTheme() {
    return ThemeData(
      // Define your dark theme here
      brightness: Brightness.dark,
      // other theme properties
    );
  }

  void toggleTheme() {
    _isDarkMode = !_isDarkMode;
    notifyListeners();
  }
}
