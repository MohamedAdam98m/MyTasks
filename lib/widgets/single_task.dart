import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SingleTask extends StatelessWidget {
  const SingleTask(
      {super.key,
      required this.title,
      this.subTitle,
      this.isDone = 0,
      this.chageState,
      this.deleteFunction});
  final String title;
  final String? subTitle;
  final int isDone;
  final Function(bool?)? chageState;
  final void Function()? deleteFunction;

  @override
  Widget build(BuildContext context) {
    return Container(
      // margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(color: Get.theme.primaryColor),
        boxShadow: [
          BoxShadow(
              offset: const Offset(3, 3),
              blurRadius: 0.1,
              color: Colors.brown[800]!)
        ],
      ),
      child: Card(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        margin: EdgeInsets.zero,
        child: ListTile(
          title: Text(
            title,
            style: TextStyle(
                // fontFamily: "Lalezar",
                // fontWeight: FontWeight.bold,
                decoration: isDone == 1 ? TextDecoration.lineThrough : null),
          ),
          // subtitle: subTitle != null ? Text("$subTitle") : null,

          leading: Checkbox(
            onChanged: chageState,
            value: isDone == 1,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(100)),
          ),
          trailing: IconButton(
            icon: const Icon(
              Icons.close,
              size: 18,
            ),
            onPressed: deleteFunction,
          ),
          // isThreeLine: subTitle != null,
        ),
      ),
    );
  }
}
