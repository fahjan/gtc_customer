import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_state_manager/src/simple/get_view.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';

import 'package:gtc_customer/core/constants/images_app.dart';

import 'package:gtc_customer/presentation/widget/custom_ListTile.dart';

class MyDrawer extends GetView<DrawerController> {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: 40),
        children: [
          
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: SvgPicture.asset(
              ImagesApp.back,
              width: SizesApp.w24,
              height: SizesApp.h24,
            ),
            alignment: Alignment.centerLeft,
          ),
          Column(
            children: [
              Container(
                width: SizesApp.w72,
                height: SizesApp.h83,
                child: CircleAvatar(
                  radius: SizesApp.r140,
                  backgroundImage: AssetImage(ImagesApp.userImage),
                ),
              ),
              Text(
                'profile_name'.tr,
                style: GoogleFonts.openSans(
                  fontSize: SizesApp.sp14,
                  color: ColorsApp.black,
                  fontWeight: FontWeight.w500,
                ),
              ),
              Text(
                'email'.tr,
                style: GoogleFonts.openSans(
                  fontSize: SizesApp.sp12,
                  color: ColorsApp.grey,
                ),
              ),
            ],
          ),
          Padding(
            padding: const EdgeInsets.only(left: 30),
            child: Column(
              children: [
                custom_ListTile(
                    text: 'My_Order',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'Favorite',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'My_Profile',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'Delivary_addres',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'Payment_method',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'Vouchers_credit',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'Notifications',
                    trailing: SvgPicture.asset(ImagesApp.counter),
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'contact_us',
                    onTap: () {
                      Get.back();
                    }),
                custom_ListTile(
                    text: 'About_us',
                    onTap: () {
                      Get.back();
                    }),
                ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    'Logout'.tr,
                    style: GoogleFonts.openSans(
                      fontSize: SizesApp.sp14,
                      color: ColorsApp.primary,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  onTap: () {
                    Get.back();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
