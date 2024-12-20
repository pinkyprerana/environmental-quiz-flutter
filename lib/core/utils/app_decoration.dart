import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../styles/app_colors.dart';

class AppDecoration {
// Outline decorations
  static BoxDecoration get outlineOnPrimaryContainer => BoxDecoration(
        color: AppColors.colorFourth,
        boxShadow: [
          BoxShadow(
            color: AppColors.colorGreen.withOpacity(0.11),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(0, 29),
          )
        ],
      );
}

class BorderRadiusStyle {
  // Custom borders
  static BorderRadius get customBorderTL70 => BorderRadius.vertical(
        top: Radius.circular(70.h),
      );
// Rounded borders
  static BorderRadius get roundedBorder30 => BorderRadius.circular(
        30.h,
      );
  static BorderRadius get roundedBorder59 => BorderRadius.circular(
        59.h,
      );
  static BorderRadius get roundedBorder75 => BorderRadius.circular(
        75.h,
      );

  static BorderRadius get roundedBorder75Top => BorderRadius.only(
        topLeft: Radius.circular(75.h),
        topRight: Radius.circular(75.h),
      );
}
