import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/ui/pages/drawer/presentation/widget/custom_list_tile.dart';

class MyDrawer extends GetView<DrawerController> {
  const MyDrawer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        padding: EdgeInsets.only(top: SizesApp.r40),
        children: [
          IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(
              Icons.arrow_back_ios,
              color: ColorsApp.primary,
              size: SizesApp.r24,
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
            padding: EdgeInsets.only(left: SizesApp.r30),
            child: Column(
              children: [
                CustomListTile(
                    text: 'my_order',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'favorite',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'my_profile',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'delivary_addres',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'payment_method',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'vouchers_credit',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'notifications',
                    trailing: SvgPicture.asset(ImagesApp.counter),
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'contact_us',
                    onTap: () {
                      Get.back();
                    }),
                CustomListTile(
                    text: 'about_us',
                    onTap: () {
                      Get.back();
                    }),
                ListTile(
                  title: Text(
                    textAlign: TextAlign.center,
                    'logout'.tr,
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
