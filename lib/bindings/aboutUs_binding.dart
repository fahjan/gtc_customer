import 'package:get/get.dart';
import 'package:gtc_customer/ui/controllers/aboutUs_controller.dart';

class AboutUsBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => AboutUsController());
  }
}
