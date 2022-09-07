import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'core/constants/sizes_app.dart';
import 'core/routes/routes_app.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Fast eat'),
      ),
      body: Center(
        child: InkWell(
          onTap: () {
            Get.toNamed(RoutesApp.orderRequestPage);
          },
          child: Text('click_here'.tr,style: TextStyle(
            fontSize: SizesApp.sp38,
          ),),
        ),
      ),
    );
  }
}
