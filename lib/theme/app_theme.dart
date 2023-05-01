import 'package:flutter/material.dart';

class AppTheme {
  static ThemeData themeData = ThemeData.light().copyWith(
    textTheme: const TextTheme(
      headlineLarge: TextStyle(
        color: Colors.white,
        fontWeight: FontWeight.bold
      ),
      bodyLarge: TextStyle(
        color: Colors.white,
        wordSpacing: 1.0,
        fontSize: 15,
        fontWeight: FontWeight.w400
      )
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: Colors.transparent,
        shadowColor: Colors.transparent,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        foregroundColor: Colors.black26,

      ),
    )
  );
}
