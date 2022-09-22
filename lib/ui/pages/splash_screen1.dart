import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/ui/widgets/item_list_filter.dart';

class SplashScreen1 extends StatelessWidget {
  const SplashScreen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.expand,
        children: [
          PositionedDirectional(
            top: -40,
            end: -40,
            child: Image.asset(ImagesApp.pizzaPath),
          ),
          PositionedDirectional(
            bottom: 0,
            start: 0,
            child: Image.asset(ImagesApp.burgerPath),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(ImagesApp.logoPath),
              SizedBox(height: SizesApp.r38,),
              Image.asset(ImagesApp.vegetablesPath)
            ],
          ),
          Column(children: [
            getItem('title', Icon(Icons.filter), Color(0x000000))
          ],)
        ],
      ),
    );
  }
}
