import 'package:flutter/material.dart';
import '../Constants/themes.dart';

class ThemeProvider with ChangeNotifier {
  ThemeData _themeData = MyTheme.lightTheme(); // Initialize with light theme

  ThemeData get themeData => _themeData;

  void toggleTheme() {
    _themeData = _themeData == MyTheme.lightTheme()
        ? MyTheme.darkTheme()
        : MyTheme.lightTheme();
    notifyListeners();
  }
}
