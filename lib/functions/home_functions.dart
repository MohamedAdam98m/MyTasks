import 'package:flutter/material.dart';
import 'package:get/get.dart';

BoxDecoration taskDecoration() {
  return BoxDecoration(
      borderRadius: BorderRadius.circular(12),
      border: Border.all(color: Get.theme.primaryColor),
      boxShadow: [
        BoxShadow(
            offset: const Offset(3, 3),
            blurRadius: 0.1,
            color: Get.theme.primaryColor)
      ]);
}

snackBar({required String type}) {
  switch (type) {
    case "add":
      Get.snackbar(
        "addNew_snackTitle".tr,
        "addNew_snackMsg".tr,
        duration: const Duration(seconds: 1),
        icon: const Icon(Icons.done),
      );
    case "delete":
      Get.snackbar(
        "deleteTask_snackTitle".tr,
        "deleteTask_snackMsg".tr,
        duration: const Duration(seconds: 1),
        icon: const Icon(Icons.done),
      );
  }
}
