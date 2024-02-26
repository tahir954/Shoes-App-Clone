import 'package:flutter/material.dart';
import 'package:shoes1/Constants/colors.dart';

class MyTheme {
  /// Light Theme Attributes
  static ThemeData lightTheme() {
    return ThemeData(
      navigationDrawerTheme: NavigationDrawerThemeData(
          backgroundColor:darkScaffold
      ),
      cardColor: Colors.black12.withOpacity(0.09),
      primaryColor: darkScaffold,
      appBarTheme: AppBarTheme(
        color: Colors.white,
        centerTitle: true,
        iconTheme: IconThemeData(
          color: blueColorFlight,
        ),
        titleTextStyle: TextStyle(
          color: darkScaffold,
          fontSize: 24,
          fontFamily: "SFUIDisplay",
        ),
      ),
      textTheme: TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SFUIDisplay",
          color: blueColorFlight,
          fontSize: 28,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w300,
          fontFamily: "SFUIDisplay",
          color: blueColorFlight,
          fontSize: 30,
        ),
        bodySmall: const TextStyle(
          fontSize: 12,
          color: Colors.black54,
          fontFamily: "SFUIDisplay",
        ),
      ),
      scaffoldBackgroundColor: Colors.white,
      useMaterial3: true,
      fontFamily: "SFUIDisplay",
    );
  }
/// Dark Theme Attributes
  static ThemeData darkTheme() {
    return ThemeData(
      useMaterial3: true,
      primaryColor: Colors.white,
      fontFamily: "SFUIDisplay",cardColor: cardColorForDark,
      navigationDrawerTheme: const NavigationDrawerThemeData(
        backgroundColor: Colors.white
      ),
      appBarTheme: AppBarTheme(
        color: darkScaffold,
        centerTitle: true,
        titleTextStyle: const TextStyle(
          color: Colors.white,
          fontSize: 24,
          fontFamily: "SFUIDisplay",
        ),
        iconTheme: const IconThemeData(
          color: Colors.white,
        ),
      ),
      textTheme: const TextTheme(
        bodyLarge: TextStyle(
          fontWeight: FontWeight.w600,
          fontFamily: "SFUIDisplay",
          color: Colors.white,
          fontSize: 28,
        ),
        bodyMedium: TextStyle(
          fontWeight: FontWeight.w300,
          fontFamily: "SFUIDisplay",
          color: Colors.white,
          fontSize: 30,
        ),
        bodySmall: TextStyle(
          fontSize: 12,
          color: Colors.white,
          fontFamily: "SFUIDisplay",
        ),
      ),
      scaffoldBackgroundColor: darkScaffold,

    );
  }
}
