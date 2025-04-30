import 'package:flutter/material.dart';
import 'package:get/get.dart';

Rx<bool> isDarkMode = true.obs;
// Rx<bool> isDarkMode = false.obs;

class AppColor {
  static Color scaffoldBackgroundColor = (isDarkMode.value)
      ? const Color.fromARGB(255, 49, 62, 74)
      : const Color.fromARGB(255, 250, 250, 250);
  static Color sideBar = (isDarkMode.value)
      ? const Color.fromARGB(255, 29, 36, 43)
      : Color.fromARGB(255, 36, 104, 155);

  static Color textfieldin = (isDarkMode.value)
      ? const Color.fromARGB(255, 58, 64, 69)
      : Color.fromARGB(255, 255, 255, 255);

  static Color primary = (isDarkMode.value)
      ? const Color.fromARGB(255, 100, 110, 119)
      : Colors.white;

  static Color buttonColor = (isDarkMode.value)
      ? const Color.fromARGB(255, 100, 110, 119)
      : Colors.white;

  static Color primarylight = (isDarkMode.value)
      ? const Color.fromARGB(255, 59, 75, 89)
      : Color.fromARGB(255, 237, 237, 237);

  static Color textPrimary =
      (isDarkMode.value) ? const Color.fromARGB(255, 3, 63, 112) : Colors.blue;
  static Color text = (isDarkMode.value)
      ? const Color.fromARGB(255, 255, 255, 255)
      : const Color.fromARGB(255, 0, 0, 0);

  static Color secondary = (isDarkMode.value)
      ? const Color.fromARGB(255, 255, 159, 10)
      : const Color.fromARGB(255, 213, 154, 27);

  static Color border = (isDarkMode.value)
      ? const Color.fromARGB(255, 201, 164, 0)
      : const Color.fromARGB(255, 213, 154, 27);

  static Color gray = (isDarkMode.value)
      ? const Color.fromARGB(255, 188, 188, 188)
      : const Color.fromARGB(255, 81, 90, 100);

  static Color error = Colors.red;
  static Color whiteText = const Color.fromARGB(255, 255, 255, 255);
}
