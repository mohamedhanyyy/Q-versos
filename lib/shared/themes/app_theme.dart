import 'package:flutter/material.dart';
import 'package:untitled/shared/themes/palette.dart';

import '../resources/colors.dart';

class AppThemes {
  static ThemeData whiteTheme = ThemeData(
    dividerTheme: const DividerThemeData(color: Colors.transparent),
    fontFamily: 'Cairo',
    primaryColor: AppColors.primaryColor,
    scaffoldBackgroundColor: Colors.white,
    splashColor: Colors.transparent,
    highlightColor: Colors.transparent,
    hoverColor: Colors.transparent,
    colorScheme: ColorScheme.fromSwatch(
      primarySwatch: Palette.kToDark,
    ).copyWith(background: Colors.white,),

  );
}
