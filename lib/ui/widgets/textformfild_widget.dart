import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';

class TextFormFiledWidget extends StatelessWidget {
  const TextFormFiledWidget({
    Key? key,
    required this.hinttext,
    // required this.line,
    required this.icon,
  }) : super(key: key);
  final String hinttext;
  //final int line;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: SizesApp.w15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(SizesApp.r5),
        color: ColorsApp.falidColor,
      ),
      child: TextFormField(
        //maxLines: line,
        decoration: InputDecoration(
          hintText: hinttext.tr,
          hintStyle: StylesApp.body.copyWith(color: ColorsApp.textFalidColor),
          prefixIcon: Icon(
            icon,
            color: ColorsApp.iconTextFalidColor,
          ),
          fillColor: ColorsApp.falidColor,
          filled: true,
          border: const OutlineInputBorder(
            borderSide: BorderSide.none,
          ),
        ),
      ),
    );
  }
}
