import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/controller/settings_controler.dart';

class SettingPage extends StatelessWidget {
  const SettingPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("setting".tr),
      ),
      body: Padding(
        padding: const EdgeInsets.fromLTRB(12, 20, 12, 12),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("theme".tr),
          GetBuilder<SettingsController>(
            builder: (controller) => ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => RadioListTile(
                      value: controller.themeGroup[index],
                      title: Text("${controller.themeGroup[index]}".tr),
                      groupValue: controller.selectedTheme,
                      onChanged: (newVal) {
                        controller.setTheme(newVal);
                      },
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 3,
                    ),
                itemCount: controller.themeGroup.length),
          ),
          const SizedBox(
            height: 30,
            child: Divider(
              height: 2,
            ),
          ),
          Text("lang".tr),
          GetBuilder<SettingsController>(
            builder: (controller) => ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => RadioListTile(
                      value: controller.languageGroup[index],
                      title: Text("${controller.languageGroup[index]}".tr),
                      groupValue: controller.selectedLanguge,
                      onChanged: (newVal) {
                        controller.setLang(newVal);
                      },
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 3,
                    ),
                itemCount: controller.languageGroup.length),
          ),
          const SizedBox(
            height: 30,
            child: Divider(
              height: 2,
            ),
          ),
          Text("other".tr),
          GetBuilder<SettingsController>(
            builder: (controller) => ListView.separated(
                shrinkWrap: true,
                itemBuilder: (context, index) => ListTile(
                      title: Text("${controller.otherGroup[index]["title"]}".tr),
                      leading: Icon(controller.otherGroup[index]["icon"]),
                      onTap: () {},
                    ),
                separatorBuilder: (context, index) => const SizedBox(
                      height: 3,
                    ),
                itemCount: controller.otherGroup.length),
          ),
        ]),
      ),
    );
  }
}
