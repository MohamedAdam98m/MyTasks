import 'package:flutter/material.dart';
import '../widgets/Floating_btn.dart';
import '../widgets/home_appBar.dart';
import '../widgets/logo_char.dart';
import '../widgets/task_builder.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: floatingBtn(),
      appBar: homeAppBar(),
      body: Container(
        padding: const EdgeInsets.fromLTRB(15, 25, 15, 30),
        child: Container(
          padding: const EdgeInsets.all(5),
          child: Stack(children: [
            logoChar(), // الشخصية
            tasksBuilder(), // باني المهام
          ]),
        ),
      ),
    );
  }
}
