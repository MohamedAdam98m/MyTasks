import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../functions/home_functions.dart';

class NewTask extends StatelessWidget {
  const NewTask(this.titleCtrl, {super.key});
  final TextEditingController titleCtrl;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: taskDecoration(),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.zero,
        child: TextField(autofocus: true,
          controller: titleCtrl,
          textInputAction: TextInputAction.done,
          textAlign: TextAlign.center,
          decoration: InputDecoration(
            hintText: "newTask_titleField".tr,
            border: const OutlineInputBorder(
                borderRadius: BorderRadius.all(Radius.circular(12))),
          ),
        ),
      ),
    );
  }
}
