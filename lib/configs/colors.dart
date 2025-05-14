import 'package:flutter/material.dart';
import 'package:get/get.dart';

// Rx<bool> isDarkMode = true.obs;
Rx<bool> isDarkMode = false.obs;

class AppColor {
  // static Color scaffoldBackgroundColor = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 49, 62, 74)
  //     : const Color.fromARGB(255, 250, 250, 250);

  // static Color sideBar = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 29, 36, 43)
  //     : Color.fromARGB(255, 36, 104, 155);

  // static Color themeButtonBG = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 39, 49, 58)
  //     : Color.fromARGB(255, 31, 90, 134);

  // static Color sideBarSelected = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 82, 90, 97)
  //     : Color.fromARGB(255, 25, 71, 106);

  // static Color textfieldin = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 58, 64, 69)
  //     : Color.fromARGB(255, 255, 255, 255);

  // static Color primary = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 100, 110, 119)
  //     : Colors.white;

  // static Color buttonColor = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 100, 110, 119)
  //     : Colors.white;

  // static Color primarylight = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 59, 75, 89)
  //     : Color.fromARGB(255, 237, 237, 237);

  // static Color textPrimary =
  //     (isDarkMode.value) ? const Color.fromARGB(255, 3, 63, 112) : Colors.blue;
  // static Color text = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 255, 255, 255)
  //     : const Color.fromARGB(255, 0, 0, 0);

  // static Color secondary = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 255, 159, 10)
  //     : const Color.fromARGB(255, 213, 154, 27);

  // static Color border = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 201, 164, 0)
  //     : const Color.fromARGB(255, 213, 154, 27);

  // static Color gray = (isDarkMode.value)
  //     ? const Color.fromARGB(255, 188, 188, 188)
  //     : const Color.fromARGB(255, 81, 90, 100);

  // static Color error = Colors.red;
  // static Color whiteText = const Color.fromARGB(255, 255, 255, 255);

  static Color primaryDark = const Color.fromARGB(255, 156, 78, 0);
  static Color primaryLight = Color.fromARGB(255, 246, 129, 34);
  static Color primary = const Color.fromARGB(255, 203, 123, 48);
  static Color buttonDark = const Color.fromARGB(255, 156, 78, 0);
  static Color buttonLight = Color.fromARGB(255, 246, 129, 34);
  static Color textOnPrimary = const Color.fromARGB(255, 255, 255, 255);
  static Color textOnSecondary = const Color.fromARGB(255, 0, 0, 0);
  static Color textOnTextfield = const Color.fromARGB(255, 0, 0, 0);
  static Color textPrimary = const Color.fromARGB(255, 255, 111, 0);
  static Color hintColor = const Color.fromARGB(255, 186, 179, 179);
  static Color textFieldBG = const Color.fromARGB(255, 240, 240, 240);
  static Color errorBg = Colors.red;
  static Color notifyText = const Color.fromARGB(255, 255, 255, 255);
  static Color successBG = const Color.fromARGB(220, 4, 255, 0);
  static Color scaffoldBgColor = const Color.fromARGB(220, 241, 240, 239);
  static Color scondary = const Color.fromARGB(220, 204, 201, 198);
  static Color scondaryDark = const Color.fromARGB(255, 227, 227, 227);
  static Color scondaryLight = const Color.fromARGB(255, 242, 241, 241);
}
