import 'dart:ffi';

import 'package:flutter/material.dart';

class CustomTheme with ChangeNotifier{
  static bool isLightTheme = true;
  ThemeMode get currentTheme => isLightTheme ? ThemeMode.light : ThemeMode.dark;

  void toggleTheme(){
    isLightTheme = !isLightTheme;
    notifyListeners();
  }

  static const Color background = Colors.white;
  static const Color primaryText = Colors.black;

  static ThemeData get LightTheme{
    return ThemeData(
      primaryColor: primaryText,
      backgroundColor: background,
      brightness: Brightness.light,
    );
  }


  static const Color darkBackground = Colors.black;
  static const Color darkPrimaryText = Colors.white;

  static ThemeData get darkTheme{
    return ThemeData(
      primaryColor: darkPrimaryText,
      backgroundColor: darkBackground,
      brightness: Brightness.dark,
    );
  }

}