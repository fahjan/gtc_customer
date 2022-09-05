

import 'package:get/get.dart';
import 'package:gtc_customer/home_page.dart';

class RoutesApp{

  static const String initialPage = '/';


 static   List<GetPage> getPages(){
    return <GetPage>[
      GetPage(name: initialPage, page:()=> const HomePage(),),
    ];
  }

}

