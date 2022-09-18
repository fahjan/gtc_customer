import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';

class AppBarWidget extends StatelessWidget {
  const AppBarWidget({
    Key? key,
    required this.title,
  }) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: StylesApp.headline,
      ),
      leading: IconButton(
        onPressed: () {},
        icon: Icon(
          Icons.arrow_back_ios_new_rounded,
          color: ColorsApp.primary,
          size: SizesApp.r30,
        ),
      ),
      backgroundColor: ColorsApp.white,
      centerTitle: true,
      elevation: 0,
    );
  }
}
