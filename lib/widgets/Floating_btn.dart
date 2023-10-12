import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controller/tasks_controller.dart';
import 'new_task.dart';

FloatingActionButton floatingBtn() {
    TasksController controller = Get.find();
    return FloatingActionButton(
      onPressed: () {
        var titleCtrl = TextEditingController();
        Get.defaultDialog(
            title: "addNewTask".tr,
            content: NewTask(titleCtrl),
            textConfirm: "newTask_addBtn".tr,
            onConfirm: () => controller.addTask(titleCtrl.text),
            textCancel: "newTask_cancelBtn".tr,
            onCancel: () => Get.back(),
            barrierDismissible: false);
      },
      tooltip: "tooltip".tr,
      child: const Icon(Icons.edit),
    );
  }