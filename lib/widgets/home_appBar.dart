import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../view/setting_page.dart';

AppBar homeAppBar() {
  return AppBar(
    title: Card(
        child: Padding(
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
      child: Text(
        "appBar_title".tr,
        style: const TextStyle(fontSize: 20),
      ),
    )),
    centerTitle: true,
    actions: [
      IconButton(
        tooltip: "settingPage".tr,
        onPressed: () => Get.to(() => const SettingPage()),
        icon: const Icon(Icons.settings),
      ),
    ],
  );
}
