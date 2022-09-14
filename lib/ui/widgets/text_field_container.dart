import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';

class TextFieldContainer extends StatelessWidget {
  const TextFieldContainer({
    Key? key,
    required this.prefixIcon,
    required this.hintText,
  }) : super(key: key);

  final IconData prefixIcon;
  final String hintText;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        color: ColorsApp.buttonSecondary,
      ),
      height: 42.r,
      width: 296.r,
      child: TextField(
        decoration: InputDecoration(
          border: InputBorder.none,
          prefixIcon: Icon(
            prefixIcon,
            color: ColorsApp.buttonPrimary,
          ),
          hintText: hintText,
          hintStyle: TextStyle(
            color: ColorsApp.textSecondary,
          ),
        ),
      ),
    );
  }
}
