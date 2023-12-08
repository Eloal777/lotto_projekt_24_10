import 'package:flutter/material.dart';

ThemeData lightMode = ThemeData(
    brightness: Brightness.light,
    colorScheme: const ColorScheme.light(
      primary: Colors.green,
      background: Color.fromARGB(255, 214, 209, 209),
      secondary: Colors.lightGreen,
    ));

ThemeData darkMode = ThemeData(
    brightness: Brightness.dark,
    colorScheme: const ColorScheme.dark(
      primary: Colors.blue,
      secondary: Colors.lightBlue,
      background: Color.fromARGB(255, 49, 47, 47),
    ));
