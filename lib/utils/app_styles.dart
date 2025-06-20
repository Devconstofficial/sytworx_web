import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

class AppStyles {

  static TextStyle regularGilroyTextStyle() => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: kPrimaryColor,
    fontFamily: "Gilroy_Regular",
  );

  static TextStyle semiBoldGilroyTextStyle() => TextStyle(
    fontSize: 14.sp,
    fontWeight: FontWeight.w400,
    color: kPrimaryColor,
    fontFamily: "Gilroy_Semi",
  );

  static TextStyle blackTextStyle() => GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kBlackTextColor1,
  );

  static TextStyle primaryTextStyle() => GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kPrimaryColor,
  );

  static TextStyle whiteTextStyle() => GoogleFonts.montserrat(
    fontSize: 14.sp,
    fontWeight: FontWeight.w500,
    color: kWhiteColor,
  );

  static TextStyle greyTextStyle() => GoogleFonts.montserrat(
    fontSize: 15.sp,
    fontWeight: FontWeight.w400,
    color: kGreyColor,
  );

  static BorderRadius get customBorder16=> BorderRadius.all(
    Radius.circular(16.r),
  );

}


