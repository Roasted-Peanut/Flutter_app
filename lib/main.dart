import 'package:fl_app/controllers/theme/theme_controller.dart';
import 'package:fl_app/routes/routes.dart';
import 'package:fl_app/theme/Themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

Future<void> main() async {
  await GetStorage.init();
  runApp(MainApp());
}

class MainApp extends StatelessWidget {
  MainApp({super.key});
  final ThemesController themeController = Get.put(ThemesController());

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: "",
      theme: Themes.lightTheme,
      darkTheme: Themes.darkTheme,
      themeMode: getThemeMode(themeController.theme),
      getPages: Routes.routes,
      initialRoute: Routes.INITIAL,
    );
  }
}

getThemeMode(String type) {
  ThemeMode themeMode = ThemeMode.system;
  switch (type) {
    case "system":
      themeMode = ThemeMode.system;
      break;
    case "dark": 
      themeMode = ThemeMode.dark;
      break;
    default:
      themeMode = ThemeMode.light;
      break;
  }
  return themeMode;
}
