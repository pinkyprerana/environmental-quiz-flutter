import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:green_quest_app/core/styles/app_colors.dart';

PrimaryColors get appTheme => ThemeHelper().themeColor();
// ThemeData get theme => ThemeHelper().themeData();

class ThemeHelper {
  // The current app theme
  final _appTheme = "themeData";

// A map of custom color themes supported by the app
  final Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  // final Map<String, ColorScheme> _supportedColorScheme = {
  //   'primary': ColorSchemes.primaryColorScheme
  // };

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  // ThemeData _getThemeData() {
  //   var colorScheme =
  //       _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
  //   return ThemeData(
  //     visualDensity: VisualDensity.standard,
  //     colorScheme: colorScheme,
  //     textTheme: tTheme,
  //     scaffoldBackgroundColor: appTheme.green10001,
  //     elevatedButtonTheme: ElevatedButtonThemeData(
  //       style: ElevatedButton.styleFrom(
  //         backgroundColor: appTheme.green100,
  //         shape: RoundedRectangleBorder(
  //           borderRadius: BorderRadius.circular(19),
  //         ),
  //         visualDensity: const VisualDensity(
  //           vertical: -4,
  //           horizontal: -4,
  //         ),
  //         padding: EdgeInsets.zero,
  //       ),
  //     ),
  //     checkboxTheme: CheckboxThemeData(
  //       fillColor: MaterialStateColor.resolveWith((states) {
  //         if (states.contains(MaterialState.selected)) {
  //           return colorScheme.primary;
  //         }
  //         return Colors.transparent;
  //       }),
  //       side: const BorderSide(
  //         width: 1,
  //       ),
  //       visualDensity: const VisualDensity(
  //         vertical: -4,
  //         horizontal: -4,
  //       ),
  //     ),
  //   );
  // }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  // ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {}

/// Class containing the supported color schemes.
class ColorSchemes {
  static const primaryColorScheme = ColorScheme.light(
    primary: Color(0XFF23643B),
    onPrimary: Color(0XE5FFFFFF),
    onPrimaryContainer: Color(0X54183D25),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Amber
  Color get amber100 => const Color(0XFFFFEBAC);
  Color get amber300 => const Color(0XFFFFD75A);
// Black
  Color get black900 => const Color(0XFF000000);
// BlueGray
  Color get blueGray100 => const Color(0XFFD7DAD7);
  Color get blueGray400 => const Color(0XFF888888);
  Color get blueGray600 => const Color(0XFF585F71);
  Color get blueGray700 => const Color(0XFF3F6F5B);
  Color get blueGray70001 => const Color(0XFF396350);
  Color get blueGray900 => const Color(0XFF151B44);
  Color get blueGray90001 => const Color(0XFF20462E);
  Color get blueGray90002 => const Color(0XFF22293D);
  Color get blueGray90003 => const Color(0XFF312830);
// DeepOrange
  Color get deepOrange200 => const Color(0XFFF9B4AA);
// Gray
  Color get gray500 => const Color(0XFFABABAB);
  Color get gray50001 => const Color(0XFFABABAC);
  Color get gray600 => const Color(0XFF996D57);
  Color get gray700 => const Color(0XFF595F71);
  Color get gray70001 => const Color(0XFF515E47);
  Color get gray800 => const Color(0XFF683123);
  Color get gray80001 => const Color(0XFF402E4C);
  Color get gray80002 => const Color(0XFF413640);
// Green
  Color get green100 => const Color(0XFFC7EBD4);
  Color get green10001 => const Color(0XFFCAEECF);
  Color get green300 => const Color(0XFF7CC785);
  Color get green30001 => const Color(0XFF88B08D);
  Color get green30002 => const Color(0XFF7DA882);
  Color get green30003 => const Color(0XFF8BD491);
  Color get green50 => const Color(0XFFE3EEE4);
  Color get green600 => const Color(0XFF4C8E65);
  Color get greenA100 => const Color(0XFFC2F2C8);
// Greenf
  Color get green9000f => const Color(0X0F0A5A11);
// Indigo
  Color get indigo900 => const Color(0XFF261C68);
// LightGreen
  Color get lightGreen100 => const Color(0XFFD4F5D8);
  Color get lightGreen600 => const Color(0XFF79BE27);
  Color get lightGreen800 => const Color(0XFF4A9F00);
  Color get lightGreenA100 => const Color(0XFFC0F384);
// Orange
  Color get orange300 => const Color(0XFFFFBA45);
// Red
  Color get red400 => const Color(0XFFED6756);
}

TextTheme tTheme = GoogleFonts.fredokaTextTheme().copyWith(
  bodyLarge: TextStyle(
    color: AppColors.headingText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 28,
    // fontWeight: FontWeight.w500,
    height: 1.2,
  ),
  bodyMedium: TextStyle(
    color: AppColors.headingText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 16,
    height: 1.2,
  ),
  bodySmall: TextStyle(
    color: AppColors.descriptionText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 14,
    height: 1.2,
  ),
  //headings
  headlineLarge: TextStyle(
    color: AppColors.headingText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 32,
    height: 1.2,
  ),
  headlineMedium: TextStyle(
    color: AppColors.headingText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 24,
    height: 1.2,
  ),
  headlineSmall: TextStyle(
    color: AppColors.headingText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 24,
    height: 1.2,
  ),
  // You may want to define other text styles as well
  labelMedium: TextStyle(
    color: AppColors.descriptionText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 12,
    height: 1.2,
  ),
  labelSmall: TextStyle(
    color: AppColors.descriptionText,
    fontFamily: GoogleFonts.fredoka().fontFamily,
    fontSize: 10,
    height: 1.2,
  ),
);
