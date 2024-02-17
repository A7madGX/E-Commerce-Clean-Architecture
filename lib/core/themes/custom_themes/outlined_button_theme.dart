/* -- Light & Dark Outlined Button Themes -- */
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class GOutlinedButtonTheme {
  GOutlinedButtonTheme._(); //To avoid creating instances

/* -- Light Theme -- */
  static final lightOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    elevation: 0,
    foregroundColor: GColors.black,
    side: const BorderSide(color: GColors.primary),
    textStyle: const TextStyle(
        fontSize: GSizes.fontSizeMd, color: GColors.black, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: GSizes.md, horizontal: GSizes.xs),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.buttonRadius)),
  )); // OutlinedButtonThemeData
/* -- Dark Theme -- */
  static final dorkOutlinedButtonTheme = OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
    foregroundColor: GColors.white,
    side: const BorderSide(color: GColors.accent),
    textStyle: const TextStyle(
        fontSize: GSizes.fontSizeMd, color: GColors.white, fontWeight: FontWeight.w600),
    padding: const EdgeInsets.symmetric(vertical: GSizes.md, horizontal: GSizes.xs),
    shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.buttonRadius)),
  ));
} // OutlinedButtonThemeData
