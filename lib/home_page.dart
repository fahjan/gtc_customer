import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/presentation/pages/drawer.dart';
import 'core/constants/images_app.dart';
import 'core/constants/sizes_app.dart';

final GlobalKey<ScaffoldState> _key = GlobalKey();

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _key,
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            _key.currentState!.openDrawer();
          },
          icon: SvgPicture.asset(
            ImagesApp.menubar,
            width: SizesApp.w23,
            height: SizesApp.h23,
          ),
        ),
        title: const Text('Fast eat'),
      ),
      drawer: const MyDrawer(),
      body: Center(
        child: Text('hello_world'.tr),
      ),
    );
  }
}
