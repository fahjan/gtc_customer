import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';
import 'package:gtc_customer/ui/controllers/aboutUs_controller.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/ui/widgets/appBar_widget.dart';
import 'package:gtc_customer/ui/widgets/inkWell_widget.dart';
import 'package:readmore/readmore.dart';

class AboutUsPage extends GetView<AboutUsController> {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizesApp.h49),
        child: AppBarWidget(
          title: 'about_us'.tr,
        ),
      ),
      body: ListView(
        children: [
          SizedBox(height: SizesApp.h40),
          Container(
            padding: EdgeInsets.symmetric(horizontal: SizesApp.w22),
            alignment: Alignment.centerLeft,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  ImagesApp.logo1Path,
                  height: SizesApp.h50,
                  width: SizesApp.w82,
                ),
                SvgPicture.asset(
                  ImagesApp.daddyEatPath,
                  height: SizesApp.h53,
                  width: SizesApp.w123,
                ),
                SizedBox(height: SizesApp.h18),
                ReadMoreText(
                  'text'.tr,
                  trimLines: 4,
                  trimMode: TrimMode.Line,
                  style: StylesApp.body,
                  colorClickableText: ColorsApp.primary,
                  trimCollapsedText: 'more',
                  trimExpandedText: ' less',
                ),
                SizedBox(height: SizesApp.h5),
                Row(
                  children: [
                    Text(
                      'v.1.2'.tr,
                      style: StylesApp.body,
                    ),
                    SizedBox(width: SizesApp.w11),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        'up_date'.tr,
                        style:
                            StylesApp.body.copyWith(color: ColorsApp.primary),
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
          SizedBox(height: SizesApp.h45),
          InkWellWidget(
            text: 'send_feedback'.tr,
            onTap: () {},
          ),
          SizedBox(height: SizesApp.h10),
          InkWellWidget(
            text: 'learn_how_we_work'.tr,
            onTap: () {},
          ),
          SizedBox(height: SizesApp.h34),
          Container(
            alignment: Alignment.centerLeft,
            padding: EdgeInsets.symmetric(
              horizontal: SizesApp.w28,
            ),
            child: Text(
              'share_us'.tr,
              style: StylesApp.body.copyWith(fontSize: SizesApp.sp16),
            ),
          ),
          SizedBox(height: SizesApp.h25),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(ImagesApp.feacbookPath),
              ),
              SizedBox(width: SizesApp.w10),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(ImagesApp.googlePath),
              ),
              SizedBox(width: SizesApp.w10),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(ImagesApp.twitterPath),
              ),
              SizedBox(width: SizesApp.w10),
              InkWell(
                onTap: () {},
                child: SvgPicture.asset(ImagesApp.instagramPath),
              ),
            ],
          )
        ],
      ),
    );
  }
}
