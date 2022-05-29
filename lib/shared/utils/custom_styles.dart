import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'colors.dart';

class AppStyles {
  static var focusBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(color: AppColors.vhLightBlue, width: 1.w),
  );
  static var focusedBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: BorderSide(color: AppColors.vhDarkBlue, width: 1.w),
  );
  static var focusedTransparentBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8.r),
    borderSide: const BorderSide(color: Colors.transparent),
  );

  static TextStyle caption = TextStyle(
    height: 1.41,
    fontSize: 11.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w300,
  );
  static TextStyle captionBold = TextStyle(
    height: 1.41,
    fontSize: 11.sp,
    color: Colors.white,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headline2 = TextStyle(
    height: 1.26,
    fontSize: 25.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w400,
  );
  static TextStyle bodySmallExtraBold = TextStyle(
    height: 1.27,
    fontSize: 15.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w900,
  );
  static TextStyle bodySmall = TextStyle(
    height: 1.27,
    fontSize: 15.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w300,
  );
  static TextStyle bodySmallBold = TextStyle(
    height: 1.27,
    fontSize: 15.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w700,
  );
  static TextStyle bodySmallBoldOpacity = TextStyle(
    height: 1.27,
    fontSize: 15.sp,
    color: AppColors.dark5.withOpacity(.7),
    fontWeight: FontWeight.w700,
  );
  static TextStyle bodyLargeBold = TextStyle(
    fontSize: 17.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w700,
  );
  static TextStyle mullish = TextStyle(
    height: 1.26,
    fontSize: 13.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headline3 = TextStyle(
    height: 1.23,
    fontSize: 21.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w400,
  );
  static TextStyle headline3Bold = TextStyle(
    height: 1.23,
    fontSize: 21.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w700,
  );
  static TextStyle headline3ExtraBold = TextStyle(
    height: 1.23,
    fontSize: 21.sp,
    color: AppColors.dark5,
    fontWeight: FontWeight.w900,
  );
  static TextStyle button = TextStyle(
    height: 1.27,
    fontSize: 15.sp,
    color: Colors.white,
    fontWeight: FontWeight.w400,
  );
}
