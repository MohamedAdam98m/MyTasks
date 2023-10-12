import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class MyServieces extends GetxService {
  static late SharedPreferences _sharedPref;

   SharedPreferences get getSharedPref => _sharedPref;

  Future<MyServieces> init() async {
    _sharedPref = await SharedPreferences.getInstance();
    print("shared initialized");
    return this;
  }
}
