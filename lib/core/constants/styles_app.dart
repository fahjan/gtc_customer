import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:gtc_customer/core/constants/colors_app.dart';
import 'package:gtc_customer/core/constants/sizes_app.dart';

class StylesApp {
  static final headline = GoogleFonts.openSans(
    fontSize: SizesApp.sp20,
    fontWeight: FontWeight.w500,
    fontStyle: FontStyle.italic,
    color: ColorsApp.black,
  );
  static final body = GoogleFonts.openSans(
    fontSize: SizesApp.sp14,
    color: ColorsApp.textColor,
  );
}
