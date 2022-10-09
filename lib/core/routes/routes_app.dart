

import 'package:get/get.dart';
import 'package:gtc_customer/features/Presentation/register_page/register_page_view.dart';
import 'package:gtc_customer/features/presentation/login_page/login_page.dart';
import 'package:gtc_customer/home_page.dart';
import 'package:gtc_customer/ui/pages/splash_screen1.dart';

class RoutesApp{

  static const String initialPage = '/initialPage';
  static const String splashScreen1 = '/';
  static const String register = '/register';
  static const String login = '/login';

  static List<GetPage> getPages() {
    return <GetPage>[
      GetPage(
        name: initialPage,
        page: () => const HomePage(),
      ),
      GetPage(
        name: splashScreen1,
        page: () => const SplashScreen1(),
      ),
      GetPage(
        name: register,
        page: () => RegisterPage(),
      ),GetPage(
        name: login,
        page: () => LoginPage(),
      ),
    ];
  }
}

