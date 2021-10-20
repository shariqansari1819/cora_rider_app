import 'dart:ui';

import 'package:flutter/material.dart';

class AppColors {
  static Map<int, Color> primarySwatchColor = {
    50: Color.fromRGBO(56, 16, 231, .1),
    100: Color.fromRGBO(56, 16, 231, .2),
    200: Color.fromRGBO(56, 16, 231, .3),
    300: Color.fromRGBO(56, 16, 231, .4),
    400: Color.fromRGBO(56, 16, 231, .5),
    500: Color.fromRGBO(56, 16, 231, .6),
    600: Color.fromRGBO(56, 16, 231, .7),
    700: Color.fromRGBO(56, 16, 231, .8),
    800: Color.fromRGBO(56, 16, 231, .9),
    900: Color.fromRGBO(56, 16, 231, 1),
  };

  static MaterialColor primaryMaterialColor =
      MaterialColor(0xFF3810E7, primarySwatchColor);

  static const colorPrimary = Color(0xFF3810E7);
  static final colorPrimaryDark = Color(0xFF6D5ABF);
  static final colorAccent = Color(0xFFF7F5F8);
  static const colorPrimaryText = Color(0xFF3C3F4A);
  static final colorSecondaryText = Color(0xFFB0A9C3);
  static final colorWhite = Color(0xFFFFFFFF);
  static final colorBlack = Color(0xFF000000);
  static final colorYellow = Color(0xFFFCC916);
  static final colorGreen = Color(0xFF34A854);
  static final colorRed = Color(0xFFE94D2B);
}
