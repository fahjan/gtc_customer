import 'package:get/instance_manager.dart';
import'package:gtc_customer/ui/pages/drawer/presentation/controllers/drawer_controller.dart';

class DrawerBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => DrawerController());
  }
}
