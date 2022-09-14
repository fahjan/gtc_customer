import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/images_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';

class ContactUsPage extends StatelessWidget {
  const ContactUsPage({Key? key}) : super(key: key);

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
                    'Contact us',
                    style: GoogleFonts.openSans(
                      fontSize: SizesApp.sp20,
                      fontWeight: FontWeight.w500,
                      fontStyle: FontStyle.italic,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: SizesApp.h39),
            SvgPicture.asset(
              ImagesApp.logo1Path,
              height: SizesApp.h50,
              width: SizesApp.w82,
            ),
            SizedBox(height: SizesApp.h12),
            Text(
              'Welcome',
              style: GoogleFonts.openSans(
                fontSize: SizesApp.sp32,
                fontWeight: FontWeight.w500,
                color: ColorsApp.welcomeColor,
              ),
            ),
            Text(
              'send us Email',
              style: GoogleFonts.openSans(
                fontSize: SizesApp.sp18,
                color: ColorsApp.welcomeColor,
              ),
            ),
            SizedBox(height: SizesApp.h33),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: SizesApp.w40),
              child: Column(
                children: [
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'user name',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        color: ColorsApp.textFalidColor,
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: ColorsApp.iconTextFalidColor,
                        size: 26,
                      ),
                      fillColor: ColorsApp.falidColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(SizesApp.r5)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: SizesApp.h8),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'mobile',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        color: ColorsApp.textFalidColor,
                      ),
                      prefixIcon: Icon(
                        Icons.phone,
                        color: ColorsApp.iconTextFalidColor,
                        size: 26,
                      ),
                      fillColor: ColorsApp.falidColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(SizesApp.r5)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: SizesApp.h8),
                  TextFormField(
                    decoration: InputDecoration(
                      hintText: 'email',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        color: ColorsApp.textFalidColor,
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: ColorsApp.iconTextFalidColor,
                        size: 26,
                      ),
                      fillColor: ColorsApp.falidColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(SizesApp.r5)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: SizesApp.h8),
                  TextFormField(
                    maxLines: 4,
                    decoration: InputDecoration(
                      hintText: 'text',
                      hintStyle: GoogleFonts.openSans(
                        fontSize: 14,
                        color: ColorsApp.textFalidColor,
                      ),
                      fillColor: ColorsApp.falidColor,
                      filled: true,
                      border: OutlineInputBorder(
                        borderRadius:
                            BorderRadius.all(Radius.circular(SizesApp.r5)),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),
                  SizedBox(height: SizesApp.h45),
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
                          horizontal: SizesApp.w115, vertical: SizesApp.h10),
                      onPressed: () {},
                      child: Text(
                        'SEND',
                        style: GoogleFonts.openSans(
                          fontSize: SizesApp.sp16,
                          fontWeight: FontWeight.w500,
                          color: ColorsApp.white,
                        ),
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
