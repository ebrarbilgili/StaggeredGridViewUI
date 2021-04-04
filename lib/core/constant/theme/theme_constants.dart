import 'package:flutter/material.dart';
import 'package:staggered_grid_ui/core/constant/color/color_constants.dart';

class ThemeConstant {
  static ThemeConstant instance = ThemeConstant._init();

  ThemeConstant._init();

  ThemeData get themeData => ThemeData(
        appBarTheme: AppBarTheme(
          backgroundColor: Colors.white,
          titleTextStyle: TextStyle(color: ColorConstants.instance.black),
        ),
        primaryColor: ColorConstants.instance.white,
        accentColor: ColorConstants.instance.black,
        scaffoldBackgroundColor: ColorConstants.instance.white,
      );
}
