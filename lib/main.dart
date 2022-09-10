import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:onesignal_flutter/onesignal_flutter.dart';
import 'core/constants/strings_app.dart';
import 'core/constants/themes_app.dart';
import 'core/routes/routes_app.dart';

import 'core/localizations/localization_app.dart';
import 'firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  OneSignal.shared.setLogLevel(OSLogLevel.verbose, OSLogLevel.none);

  OneSignal.shared.setAppId("ae0610e4-143f-4c31-b0c8-1bfbfd0f5210");

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return GetMaterialApp(
          title: StringsApp.titleApp,
          theme: ThemesApp.light,
          translations: LocalizationApp(),
          locale: const Locale('en', 'US'),
          fallbackLocale: const Locale('en', 'US'),
          darkTheme: ThemesApp.dark,
          themeMode: ThemeMode.light,
          initialRoute: RoutesApp.initialPage,
          getPages: RoutesApp.getPages(),
        );
      },
    );
  }
}
