import 'package:get/get.dart';
import 'package:gtc_customer/features/presentation/marchent/marchent_controller.dart';


class MarchentBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => MarchentController());
  }
}
