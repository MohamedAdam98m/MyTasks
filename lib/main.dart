import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../functions/main_functions.dart';
import '../theme/theme_controller.dart';
import '../locale/locale_controler.dart';
import '../locale/my_translation.dart';
import '../view/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initializSetting();
  runApp(const MyTasksApp());
}

class MyTasksApp extends StatelessWidget {
  const MyTasksApp({super.key});

  @override
  Widget build(BuildContext context) {
    
    return GetMaterialApp(
      title: "app_title".tr,
      debugShowCheckedModeBanner: false,
      theme: ThemeController().lightTheme,
      darkTheme: ThemeController().darkTheme,
      translations: MyTranslation(),
      locale: LocaleController().appLocale,
      themeMode: ThemeController().themeMode,
      home: HomePage(),
    );
  }
}
