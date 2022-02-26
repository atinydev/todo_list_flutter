import 'package:flutter/material.dart';

class AppTheme {
  static const Color primaryColor = Colors.deepPurpleAccent;

  static const borderRadius = BorderRadius.only(
    topLeft: Radius.circular(20),
    topRight: Radius.circular(20),
  );

  static const boxDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: borderRadius,
  );

  static final ThemeData lightTheme = ThemeData.light().copyWith(
    primaryColor: primaryColor,
    inputDecorationTheme: const InputDecorationTheme(
      enabledBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: primaryColor,
        ),
      ),
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          width: 2,
          color: primaryColor,
        ),
      ),
    ),
    // textTheme: lightTextTheme,
  );

  // static const TextTheme lightTextTheme = TextTheme();

  static final ThemeData darkTheme = ThemeData.dark().copyWith(
    primaryColor: primaryColor,
    // textTheme: darkTextTheme,
  );

  // static const TextTheme darkTextTheme = TextTheme();
}
