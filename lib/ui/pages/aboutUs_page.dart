import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/ui/controllers/aboutUs_controller.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';

class AboutUsPage extends GetView<AboutUsController> {
  const AboutUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorsApp.white,
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.only(top: SizesApp.h14),
              child: Row(
                children: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios_new_rounded,
                      color: ColorsApp.primary,
                      size: SizesApp.px30,
                    ),
                  ),
                  SizedBox(width: SizesApp.w118),
                  Text(
                    'about_us'.tr,
                    style: GoogleFonts.openSans(
                      fontSize: SizesApp.sp20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizesApp.h47),
            Container(
              padding: EdgeInsets.only(
                left: SizesApp.w21,
                right: SizesApp.w19,
              ),
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
                  SizedBox(height: SizesApp.h17),
                  Text(
                    'text'.tr,
                    style: GoogleFonts.openSans(
                      fontSize: SizesApp.sp14,
                      color: ColorsApp.textColor,
                    ),
                  ),
                  SizedBox(height: SizesApp.h5),
                  Row(
                    children: [
                      Text(
                        'v.1.2'.tr,
                        style: GoogleFonts.openSans(
                          fontSize: SizesApp.sp14,
                          color: ColorsApp.textColor,
                        ),
                      ),
                      SizedBox(width: SizesApp.w11),
                      TextButton(
                        onPressed: () {},
                        child: Text(
                          'up_date'.tr,
                          style: GoogleFonts.openSans(
                            fontSize: SizesApp.sp14,
                            color: ColorsApp.primary,
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            SizedBox(height: SizesApp.h45),
            InkWell(
              onTap: () {},
              child: Card(
                margin:
                    EdgeInsets.only(left: SizesApp.w28, right: SizesApp.w48),
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
                        'send_feedback'.tr,
                        style: GoogleFonts.openSans(fontSize: SizesApp.sp14),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorsApp.primary,
                        size: SizesApp.px15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: SizesApp.h10),
            InkWell(
              onTap: () {},
              child: Card(
                margin:
                    EdgeInsets.only(left: SizesApp.w28, right: SizesApp.w48),
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
                        'Learn_how_we_work'.tr,
                        style: GoogleFonts.openSans(fontSize: 14),
                      ),
                      const Spacer(),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: ColorsApp.primary,
                        size: 15,
                      ),
                    ],
                  ),
                ),
              ),
            ),
            SizedBox(height: SizesApp.h34),
            Container(
              alignment: Alignment.centerLeft,
              padding: EdgeInsets.only(
                right: SizesApp.w279,
                left: SizesApp.w28,
              ),
              child: Text(
                'share_us'.tr,
                style: GoogleFonts.openSans(
                  fontSize: 16,
                  color: ColorsApp.textColor,
                ),
              ),
            ),
            SizedBox(height: SizesApp.h24),
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
                  child: Container(
                    height: SizesApp.h50,
                    width: SizesApp.w53,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: SizesApp.w1,
                        color: ColorsApp.bordarColor,
                      ),
                      borderRadius: BorderRadius.circular(SizesApp.r10),
                    ),
                    child: Center(
                      child: SvgPicture.asset(ImagesApp.googlePath),
                    ),
                  ),
                ),
                SizedBox(width: SizesApp.w10),
                InkWell(
                  onTap: () {},
                  child: SvgPicture.asset(ImagesApp.twitterPath),
                ),
                SizedBox(width: SizesApp.w10),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: SizesApp.h50,
                    width: SizesApp.w53,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: SizesApp.w1,
                        color: ColorsApp.bordarColor,
                      ),
                      borderRadius: BorderRadius.circular(SizesApp.r10),
                    ),
                    child: Center(
                      child: SvgPicture.asset(ImagesApp.instagramPath),
                    ),
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
