import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_quest_app/core/styles/size_utils.dart';

class AppTextStyles {
  AppTextStyles._();

  static TextStyle textStyleVarelaRound =
      const TextStyle(fontFamily: 'Varela Round');

  static TextStyle textStyleFredoka = GoogleFonts.fredoka();
  static TextStyle textStyleFredokaLight =
      GoogleFonts.fredoka(fontWeight: FontWeight.w300);
  static TextStyle textStyleFredokaRegular =
      GoogleFonts.fredoka(fontWeight: FontWeight.w400);
  static TextStyle textStyleFredokaMedium =
      GoogleFonts.fredoka(fontWeight: FontWeight.w500);
  static TextStyle textStyleFredokaSemiBold =
      GoogleFonts.fredoka(fontWeight: FontWeight.w600);
  static TextStyle textStyleFredokaBold =
      GoogleFonts.fredoka(fontWeight: FontWeight.w700);
  static TextStyle textStyleFredokaSemiExtraBold =
      GoogleFonts.fredoka(fontWeight: FontWeight.w800);
  static TextStyle textStyleFredokaExtraBold =
      GoogleFonts.fredoka(fontWeight: FontWeight.w900);

  static const TextStyle textStyleCoutureBold =
      TextStyle(fontFamily: 'couture', fontWeight: FontWeight.w700);
  static const TextStyle textStyleCoutureBoldItalic = TextStyle(
      fontFamily: 'couture',
      fontWeight: FontWeight.w700,
      fontStyle: FontStyle.italic);

  static TextStyle get bodyMediumGray600 =>
      AppTextStyles.bodyMediumGray600.copyWith(fontFamily: 'Fredoka');
  static TextStyle get bodyMediumVarelaRoundGray500 =>
      AppTextStyles.bodyMediumVarelaRoundGray500
          .copyWith(fontFamily: 'Varela Round');
  static TextStyle get bodySmall10 => AppTextStyles.bodySmall10.copyWith(
        fontFamily: 'Fredoka',
        fontSize: 10.fSize,
      );
  static TextStyle get bodySmallBlack900 =>
      AppTextStyles.bodySmallBlack900.copyWith(fontFamily: 'Fredoka');
  static TextStyle get bodySmallFredokaGray600 =>
      AppTextStyles.bodySmallFredokaGray600.copyWith(fontFamily: 'Fredoka');
  static TextStyle get bodySmallFredokaGray700 =>
      AppTextStyles.bodySmallFredokaGray700.copyWith(fontFamily: 'Fredoka');

  static TextStyle get displaySmallGreen30001 =>
      AppTextStyles.displaySmallGreen30001.copyWith(fontFamily: 'Fredoka');

  static TextStyle get labelLargeGray600 =>
      AppTextStyles.labelLargeGray600.copyWith(fontFamily: 'Fredoka');
  static TextStyle get labelLargeMedium =>
      AppTextStyles.labelLargeMedium.copyWith(fontFamily: 'Fredoka');

  static TextStyle get titleSmallGray600 =>
      AppTextStyles.titleSmallGray600.copyWith(fontFamily: 'Fredoka');
  static TextStyle get titleSmallOnPrimary =>
      AppTextStyles.titleSmallOnPrimary.copyWith(fontFamily: 'Fredoka');
}
