import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mytasks/widgets/single_task.dart';

import '../controller/tasks_controller.dart';

GetBuilder<TasksController> tasksBuilder() {
    return GetBuilder<TasksController>(
            builder: (controller) {
              return ListView.separated(
                itemCount: controller.getTasks.length,
                itemBuilder: (context, index) {

                  int id = controller.getTasks[index]["id"];
                  String taskTitle = controller.getTasks[index]["taskTitle"];
                  int check = controller.getTasks[index]["check"];

                  return SingleTask(
                    title: taskTitle,
                    isDone: check,
                    chageState: (newVal) {
                      controller.changState(id, check);
                    },
                    deleteFunction: () => controller.deleteTask(id),
                  );
                },
                separatorBuilder: (context, index) =>
                    const SizedBox(height: 10),
              );
            },
          );
  }