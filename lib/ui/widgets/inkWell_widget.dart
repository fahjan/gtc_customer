import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';

class InkWellWidget extends StatelessWidget {
  const InkWellWidget({
    Key? key,
    required this.text,
    required this.onTap,
  }) : super(key: key);
  final String text;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Card(
        margin: EdgeInsets.only(left: SizesApp.w28, right: SizesApp.w48),
        child: Padding(
          padding: EdgeInsets.only(
            top: SizesApp.h12,
            bottom: SizesApp.h11,
            left: SizesApp.w15,
            right: SizesApp.w22,
          ),
          child: Row(
            children: [
              Text(
                text,
                style: StylesApp.body.copyWith(color: ColorsApp.black),
              ),
              const Spacer(),
              Icon(
                Icons.arrow_forward_ios_rounded,
                color: ColorsApp.primary,
                size: SizesApp.r15,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
