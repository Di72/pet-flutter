import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';

// To change the theme depending on the system and switch
class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.system;

  bool get isDarkMode {
    if (themeMode == ThemeMode.system) {
      final brightness = SchedulerBinding.instance?.window.platformBrightness;
      return brightness == Brightness.dark;
    } else {
      return themeMode == ThemeMode.dark;
    }
  }

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyThemes {
  static final lightTheme = ThemeData(
    scaffoldBackgroundColor: Colors.white,
    primaryColor: Colors.white,
    appBarTheme: AppBarTheme(
      color: Colors.amber[50],
      titleTextStyle: const TextStyle(color: Colors.black, fontSize: 20),
      iconTheme: const IconThemeData(color: Colors.black),
    ),
    colorScheme: const ColorScheme.light(),
    backgroundColor: const Color(0xff8E97FD),
    iconTheme: const IconThemeData(color: Color(0xFFC5C5C5)),
  );

  static final darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.grey.shade900,
      primaryColor: Colors.black,
      appBarTheme: AppBarTheme(
        color: Colors.grey[600],
        titleTextStyle: const TextStyle(color: Colors.white, fontSize: 20),
        iconTheme: const IconThemeData(color: Colors.white),
      ),
      colorScheme: const ColorScheme.dark(),
      backgroundColor: Colors.red[400],
      iconTheme: IconThemeData(color: Colors.grey.shade900));
}
