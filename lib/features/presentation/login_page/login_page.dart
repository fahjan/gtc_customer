import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'login_controller.dart';

class LoginPage extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    controller.login("user123@gmail.com", "123456", "123-123-123-123");
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
