import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';

class PageHeader extends StatelessWidget {
  const PageHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SvgPicture.asset(
          ImagesApp.logo,
          width: 82.43.r,
          height: 50.72.r,
        ),
        SvgPicture.asset(
          ImagesApp.logoText,
          width: 123.r,
          height: 53.68.r,
        ),
        SizedBox(
          height: 19.r,
        ),
        Text(
          'please to order you should login',
          style: TextStyle(
            color: ColorsApp.textSecondary,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 25.r,
        ),
      ],
    );
  }
}
