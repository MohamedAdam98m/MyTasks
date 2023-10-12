import 'package:get/get.dart';
import 'package:mytasks/database/sql_db.dart';
import 'package:mytasks/functions/home_functions.dart';

class TasksController extends GetxController {
  final SqlDb _db = SqlDb();
  final List _tasks = [];
  List get getTasks => _tasks;

  @override
  onInit() {
    getData();
    super.onInit();
  }

  getData() async {
    var respose = await _db.readData(table: 'tasks');
    _tasks.clear();
    _tasks.addAll(respose!);
    update();
  }

  addTask(String? taskTitle) async {
    if (taskTitle != "") {
      var response = await _db.insertData(
          table: 'tasks', values: {"taskTitle": taskTitle, 'check': 0});

      print(response);
      Get.back();
      snackBar(type: "add");
      getData();
    } else {
      Get.back();
    }

    update();
  }

  changState(int id, int check) async {
    var response = await _db.updateData(
        table: "tasks",
        values: {'check': check == 1 ? 0 : 1},
        where: "`id` = $id");
    print(response);
    getData();
    update();
  }

  deleteTask(int taskId) async {
    var respose = await _db.deleteData(table: "tasks", where: "`id` = $taskId");
    print(respose);
    snackBar(type: "delete");
    getData();
    update();
  }

  // deleteAllTasks() async {

  // }
}
