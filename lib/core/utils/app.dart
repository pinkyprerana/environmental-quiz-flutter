
import 'package:flutter/material.dart';

class AppConfigs {

  static const double h1 = 1.0;
  static const double h2 = 2.0;
  static const double h5 = 5.0;
  static const double h10 = 10.0;
  static const double h20 = 20.0;
  static const double h50 = 50.0;
  static const double h100 = 100.0;

  static const double FONT_SIZE_EXTRA_SMALL = h10;      // 10.0
  static const double FONT_SIZE_SMALL = 12.0 ;      // 12.0
  static const double FONT_SIZE_DEFAULT = 14.0;         // 14.0
  static const double FONT_SIZE_LARGE = 16.0;        // 16.0
  static const double FONT_SIZE_EXTRA_LARGE = 18.0;
  static const double FONT_SIZE_OVER_LARGE = 24.0;
  static const double FONT_SIZE_MAX_LARGE = 30.0;
  static const double TIMELINE_TEXT = 8;

  static const double PADDING_SIZE_EXTRA_SMALL = 5.0;
  static const double PADDING_SIZE_SMALL = 10.0;
  static const double PADDING_SIZE_DEFAULT = 15.0;
  static const double PADDING_SIZE_LARGE = 20.0;
  static const double PADDING_SIZE_EXTRA_LARGE = 25.0;

  static const double RADIUS_INFO_MSG_ALONG_WITH_TEXT = 4;
  static const double RADIUS_SIZE_DEFAULT = 8.0;
  static const double RADIUS_SIZE_TEN = 10.0;
  static const double RADIUS_SIZE_LARGE = 20.0;

  static const double ICON_EXTRA_SMALL_SIZE = 10;
  static const double ICON_SMALL_SIZE = 20;
  static const double ICON_SIZE = 25;

 /******* Drawer Config: START ******/

  /// Drawer Border Radius
  static const double Br_BORDER = 20;

  /// Drawer Paddings
  static const double P_TOP = 40;
  static const double P_LEFT = 10;
  static const double P_RIGHT = 10;
  static const double P_BOTTOM = 20;

  /// Drawer Menu Option Divider line
  static const double Dv_INDENT = 25;
  static const double Dv_ENDINDENT = 25;
  static const Color Dv_COLOR = Colors.white10;

/******* Drawer Config: END ******/


/******* Dashboard Config: START ******/



/// ***** Dashboard Config: END *****

  static const Color PrimaryColor = Color(0xff87CEFA);//blue Color(0xff28bee1)   Color(0xFF1DA9CD)
  static const Color SecondaryColor = Color(0xFF000000);//black
  static const Color TertiaryColor = Color(0xFF2E373F);//dark grey
  static const Color ForthColor = Color(0xFFDEE0E1);//light grey
  static const Color FifthColor = Colors.white;//white
  static const Color SixthColor = Colors.deepPurple;
  static const Color borderSideColor = Color(0xFFdddddd);//grey shade
  static const Color focusBorderColor = Color(0xFFB3E5FC);//light blue


  static const double Dsh_ICON_SIZE = 30;
  static const Color Dsh_ICON_COLOR = PrimaryColor;
  static const Color Dsh_BOTTOMBAR = SecondaryColor;
  static const Color Dsh_TOPBAR = SecondaryColor;

  static const String font = "Varela round";

/******* Home Screen Config: START ******/




/******* Home Screen Config: END ******/

/// *****  Dropdown Button  *********
  static const double drpdwn_MENU_RADIUS = 10;

  static final selectBoxDecoration = BoxDecoration(
      border: Border.all(color: AppConfigs.SecondaryColor),
      borderRadius: const BorderRadius.all(Radius.circular(15)
      )
  );

  static const optionsFilterTextStyle = TextStyle(
      color: AppConfigs.SecondaryColor,
      fontWeight: FontWeight.w500
  );

}
