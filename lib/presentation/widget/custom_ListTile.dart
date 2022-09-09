
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';

class custom_ListTile extends StatelessWidget {
  custom_ListTile({Key? key, required this.text, required this.onTap, this.trailing})
      : super(key: key);
  String text;
  VoidCallback onTap;
  Widget? trailing;
  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        text.tr,
        style: GoogleFonts.openSans(
          fontSize: SizesApp.sp16,
          color: ColorsApp.black,
          fontWeight: FontWeight.w500,

        ),
      ),
      trailing: trailing ,
      onTap: () {
        onTap;
      },
    );
  }
}
