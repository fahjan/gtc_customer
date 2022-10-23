import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';
import 'package:gtc_customer/core/constants/styles_app.dart';
import 'package:gtc_customer/ui/widgets/appBar_widget.dart';
import 'package:gtc_customer/ui/widgets/textformfild_widget.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorsApp.white,
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(SizesApp.h49),
        child: AppBarWidget(title: 'contact-us'.tr),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: SizesApp.h34),
            SvgPicture.asset(
              ImagesApp.logo1Path,
              height: SizesApp.h50,
              width: SizesApp.w82,
            ),
            SizedBox(height: SizesApp.h10),
            Text(
              'welcome'.tr,
              style: GoogleFonts.openSans(
                fontSize: SizesApp.sp32,
                fontWeight: FontWeight.w500,
                color: ColorsApp.welcomeColor,
              ),
            ),
            Text(
              'send_us_email'.tr,
              style: GoogleFonts.openSans(
                fontSize: SizesApp.sp18,
                color: ColorsApp.welcomeColor,
              ),
            ),
            SizedBox(height: SizesApp.h25),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizesApp.w30),
              child: Column(
                children: [
                  TextFormFiledWidget(
                    hinttext: 'user_name'.tr,
                    icon: Icons.person,
                  ),
                  SizedBox(height: SizesApp.h8),
                  TextFormFiledWidget(
                    hinttext: 'mobile'.tr,
                    icon: Icons.phone,
                  ),
                  SizedBox(height: SizesApp.h8),
                  TextFormFiledWidget(
                    hinttext: '_email'.tr,
                    icon: Icons.email,
                  ),
                  SizedBox(height: SizesApp.h8),
                  Container(
                    padding: EdgeInsets.only(left: SizesApp.w15),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(SizesApp.r5),
                      color: ColorsApp.falidColor,
                    ),
                    child: TextFormField(
                      maxLines: 4,
                      decoration: InputDecoration(
                        hintText: '_text'.tr,
                        hintStyle: StylesApp.body
                            .copyWith(color: ColorsApp.textFalidColor),
                        fillColor: ColorsApp.falidColor,
                        filled: true,
                        border: const OutlineInputBorder(
                          borderSide: BorderSide.none,
                        ),
                      ),
                    ),
                  ),
                  SizedBox(height: SizesApp.h40),
                  Container(
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          ColorsApp.buttonColor1,
                          ColorsApp.buttonColor2,
                        ],
                        begin: Alignment.centerRight,
                        end: Alignment.centerLeft,
                      ),
                      borderRadius: BorderRadius.circular(SizesApp.r50),
                    ),
                    child: MaterialButton(
                      padding: EdgeInsets.symmetric(
                        horizontal: SizesApp.w115,
                        vertical: SizesApp.h10,
                      ),
                      onPressed: () {},
                      child: Text(
                        'SEND',
                        style: StylesApp.bodyButton,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
