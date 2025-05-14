import 'package:flutter/material.dart';

ThemeData lightTheme = ThemeData(
  brightness: Brightness.light,
  colorScheme: ColorScheme(brightness: Brightness.light,
  primary: Color.fromARGB(255, 237, 237, 237),
  onPrimary: Color.fromARGB(255, 0, 0, 0),
  secondary: Color.fromARGB(255, 255, 255, 255) ,
  onSecondary:Color.fromARGB(255, 0, 0, 0) ,
  tertiary: Color.fromARGB(255, 250, 250, 250),
  onTertiary: Color.fromARGB(255, 0, 0, 0),
  surface: Color.fromARGB(255, 36, 104, 155) ,
  onSurface:Color.fromARGB(255, 31, 90, 134),
  surfaceContainer:Color.fromARGB(255, 25, 71, 106) ,
  error: Colors.red,
  onError: Colors.white,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 237, 237, 237),
);

ThemeData darkTheme = ThemeData(
colorScheme: ColorScheme(brightness: Brightness.light,
  primary:  Color.fromARGB(255, 49, 62, 74),
  onPrimary: Color.fromARGB(255, 255, 255, 255),
  secondary: Color.fromARGB(255, 82, 90, 97) ,
  onSecondary:Color.fromARGB(255, 255, 255, 255) ,
  tertiary: Color.fromARGB(255, 100, 110, 119),
  onTertiary: Color.fromARGB(255, 255, 255, 255),
  surface: Color.fromARGB(255, 29, 36, 43) ,
  onSurface:Color.fromARGB(255, 39, 49, 58),
  surfaceContainer:Color.fromARGB(255, 82, 90, 97) ,
  error: Colors.red,
  onError: Colors.white,
  ),
  scaffoldBackgroundColor: const Color.fromARGB(255, 49, 62, 74),
);
