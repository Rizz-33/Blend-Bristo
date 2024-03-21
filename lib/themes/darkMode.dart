import 'package:flutter/material.dart';

ThemeData darkMode = ThemeData(
  brightness: Brightness.dark,
  colorScheme: ColorScheme.dark(
    background: Color.fromARGB(255, 25, 25, 25),
    primary: Color.fromARGB(255, 255, 102, 0),
    secondary: Color.fromARGB(255, 255, 204, 102),
    tertiary: Color.fromARGB(255, 204, 153, 51),
    onBackground: Colors.white,
  ),
);
