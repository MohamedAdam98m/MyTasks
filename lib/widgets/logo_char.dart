import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/constant.dart';
import '../controller/settings_controler.dart';

Widget logoChar() {
  return GetBuilder<SettingsController>(
    builder: (controller) {
      return Container(
        alignment:
            getLangPref == "ar" ? Alignment.bottomRight : Alignment.bottomLeft,
        child: getLangPref == "ar"
            ? Image.asset(
                "assets/img/char_right.png",
                height: 250,
              )
            : Image.asset(
                "assets/img/char_left.png",
                height: 250,
              ),
      );
    },
  );
}
