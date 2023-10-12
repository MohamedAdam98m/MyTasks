import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/constant.dart';

class ThemeController extends GetxController {
  ThemeMode themeMode = getThemePref == null
      ? ThemeMode.system
      : getThemePref == "dark"
          ? ThemeMode.dark
          : ThemeMode.light;

  appThemeMode(String themeCode) {
    // late String code;
    switch (themeCode) {
      case "darkMode":
        Get.changeThemeMode(ThemeMode.dark);
        // code = "dark";

      case "lightMode":
        Get.changeThemeMode(ThemeMode.light);
        // code = "loght";

      case 'systemMode':
        Get.changeThemeMode(ThemeMode.system);
        // code = 'system';
    }
    // setThemePref = code;
    // setThemePref(code);
  }

  ThemeData get lightTheme => ThemeData(
        brightness: Brightness.light,
        fontFamily: "ElMessiri",
        // fontFamily: "Alexandria",
        useMaterial3: true,
        colorSchemeSeed: Colors.brown[800],
      );
  ThemeData get darkTheme => ThemeData(
        brightness: Brightness.dark,
        fontFamily: "ElMessiri",
        // fontFamily: "Alexandria",
        colorSchemeSeed: Colors.brown[800],
        useMaterial3: true,
      );
}
