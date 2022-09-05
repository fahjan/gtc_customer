import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:gtc_customer/core/constants/themes_app.dart';
import 'package:gtc_customer/core/routes_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemesApp.light,
      darkTheme: ThemesApp.dark,
      themeMode: ThemeMode.light,
      initialRoute: RoutesApp.initialPage,
      getPages: RoutesApp.getPages(),
    );
  }
}


