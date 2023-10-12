import 'package:mytasks/services/my_services.dart';

var pref = MyServieces().getSharedPref;

get getLangPref => pref.get("appLang");
set setLangPref(String val) => pref.setString("appLang", val);

get getThemePref => pref.get("appTheme");
set setThemePref(String val) => pref.setString("appTheme", val);
