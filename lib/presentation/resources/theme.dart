import 'package:flutter/material.dart';

ThemeData appTheme() {
  return ThemeData(
      fontFamily: 'Poppins',
      brightness: Brightness.dark,
      textTheme: const TextTheme(
          labelLarge: TextStyle(
              color: Colors.white, fontWeight: FontWeight.bold, fontSize: 28),
          labelMedium: TextStyle(
              color: Colors.black, fontWeight: FontWeight.bold, fontSize: 20),
          labelSmall: TextStyle(color: Colors.black, fontSize: 12)));
}
