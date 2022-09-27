import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/features/Presentation/register_page/register_page_controller.dart';

class RegisterPage extends GetView<RegisterController> {
  RegisterPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // replace data for text field
    // call the register method on clicked button
    controller.register(
        "test12", 'test755@test.com', '0599999909', '123456', '123456');
    return Scaffold(
      body: Obx(() {
        if (controller.isLoading.isFalse) {
          return Stack(children: [
            Text(controller.message.value),
          ]);
        } else {
          return const Center(
            child: CircularProgressIndicator(),
          );
        }
      }),
    );
  }
}
