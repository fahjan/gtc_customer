

import 'package:get/get.dart';
import 'package:gtc_customer/home_page.dart';
import 'package:gtc_customer/ui/pages/splash_screen1.dart';

class RoutesApp{

  static const String initialPage = '/initialPage';
  static const String splashScreen1 = '/';


 static   List<GetPage> getPages(){
    return <GetPage>[
      GetPage(name: initialPage, page:()=> const HomePage(),),
      GetPage(name: splashScreen1, page:()=> const SplashScreen1(),),
    ];
  }

}

