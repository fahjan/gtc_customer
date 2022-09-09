import 'package:get/get.dart';
import 'package:gtc_customer/home_page.dart';

import 'package:gtc_customer/bindings/drawer_binding.dart';

import 'package:gtc_customer/presentation/pages/drawer.dart';

class RoutesApp {
  static const String initialPage = '/';
  static const String drawer = '/drawer';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: initialPage,
        page: () => const HomePage(),
      ),

      GetPage(
    name: drawer,
    page: () => const MyDrawer(),
    binding: DrawerBinding(),
    fullscreenDialog: true,
  ),
    ];
  }
}
