import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/constant.dart';


class LocaleController extends GetxController {
  Locale? appLocale = getLangPref == null
      ? Get.deviceLocale
      : Locale("$getLangPref");

  appLang(String langCode) {
    
    Get.updateLocale(Locale(langCode));
  }
}


