import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/controller/settings_controler.dart';
import 'package:mytasks/controller/tasks_controller.dart';
import 'package:mytasks/locale/locale_controler.dart';
import 'package:mytasks/theme/theme_controller.dart';
import '../services/my_services.dart';

Future initializSetting() async {
  await Get.putAsync(() => MyServieces().init());
  Get.lazyPut(() => LocaleController());
  Get.put(TasksController());
  Get.lazyPut(() => ThemeController());
  Get.lazyPut(() => SettingsController());
}

MaterialColor getColorMaterial(Color color) {
  final List<Color> colors = <Color>[
    color,
    color.withOpacity(0.8),
    color.withOpacity(0.6),
    color.withOpacity(0.4),
    color.withOpacity(0.2),
    color.withOpacity(0.1),
    color.withOpacity(0.05),
  ];

  return MaterialColor(color.value, <int, Color>{
    50: colors[6],
    100: colors[5],
    200: colors[4],
    300: colors[3],
    400: colors[2],
    500: colors[1],
    600: colors[0],
    700: colors[0],
    800: colors[0],
    900: colors[0],
  });
}
