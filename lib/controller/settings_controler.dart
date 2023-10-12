import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/locale/locale_controler.dart';

import 'package:mytasks/theme/theme_controller.dart';
import 'package:mytasks/constant.dart';

LocaleController localeController = Get.find();
ThemeController themeController = Get.find();

class SettingsController extends GetxController {
  String? selectedTheme = getThemePref == "dark"
      ? "darkMode"
      : getThemePref == "light"
          ? "lightMode"
          : "systemMode";

  String? selectedLanguge = getLangPref == "ar" ? "arabic" : "english";

  setLang(newVal) {
    selectedLanguge = newVal;
    String code = selectedLanguge == "arabic" ? "ar" : "en";
    setLangPref = code; // حفظ اللغة في الشيردبيرفرنس
    localeController.appLang(code); // تغيير اللغة
    update();
  }

  setTheme(newVal) {
    selectedTheme = newVal;

    String code = selectedTheme == "darkMode"
        ? "dark"
        : selectedTheme == "lightMode"
            ? "light"
            : "system";

    setThemePref = code;
    themeController.appThemeMode(newVal);
    update();
  }

  List themeGroup = [
    "darkMode",
    "lightMode",
    "systemMode",
  ];

  List languageGroup = [
    "arabic",
    "english",
  ];

  List otherGroup = [
    {
      "title": "about",
      "icon": Icons.arrow_forward_ios_sharp,
      "onTap": () {},
    },
    {
      "title": "shareApp",
      "icon": Icons.ios_share,
      "onTap": () {},
    },
    {
      "title": "contact",
      "icon": Icons.chat,
      "onTap": () {},
    },
  ];
}
