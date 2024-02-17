import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/themes/custom_themes/app_bar_theme.dart';
import 'package:flutter_mapp_clean_architecture/core/themes/custom_themes/bottom_sheet_theme.dart';
import 'package:flutter_mapp_clean_architecture/core/themes/custom_themes/elevated_button_theme.dart';
import 'package:flutter_mapp_clean_architecture/core/themes/custom_themes/text_field_theme.dart';
import 'package:flutter_mapp_clean_architecture/core/themes/custom_themes/text_themes.dart';

class GAppTheme {
  GAppTheme._();

  static ThemeData lightTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.light,
    primaryColor: GColors.primary,
    scaffoldBackgroundColor: GColors.light,
    textTheme: GTextTheme.lightTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.lightElevatedButtonTheme,
    appBarTheme: GAppBarTheme.lightAppBarTheme,
    bottomSheetTheme: GBottomSheetTheme.lightBottomSheet,
    inputDecorationTheme: GTextFieldTheme.lightInputDecorationTheme,
  );
  static ThemeData darkTheme = ThemeData(
    useMaterial3: true,
    fontFamily: 'Poppins',
    brightness: Brightness.dark,
    primaryColor: GColors.primary,
    scaffoldBackgroundColor: GColors.dark,
    textTheme: GTextTheme.darkTextTheme,
    elevatedButtonTheme: GElevatedButtonTheme.darkElevatedButtonTheme,
    appBarTheme: GAppBarTheme.darkAppBarTheme,
    bottomSheetTheme: GBottomSheetTheme.darkBottomSheet,
    inputDecorationTheme: GTextFieldTheme.darkInputDecorationTheme,
  );
}
