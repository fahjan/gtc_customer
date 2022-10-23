import 'package:get/get.dart';
import 'package:gtc_customer/ui/controllers/contactUs_controller.dart';

class ContactUsBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ContactUsController());
  }
}
