import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class GElevatedButtonTheme {
  GElevatedButtonTheme._();
  static final lightElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: GColors.white,
      backgroundColor: GColors.primary,
      disabledBackgroundColor: GColors.grey,
      disabledForegroundColor: GColors.grey,
      side: const BorderSide(color: GColors.primary),
      padding: const EdgeInsets.symmetric(vertical: GSizes.sm, horizontal: GSizes.xs),
      textStyle: const TextStyle(
        fontSize: GSizes.fontSizeMd,
        color: GColors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.buttonRadius)),
    ),
  );
  static final darkElevatedButtonTheme = ElevatedButtonThemeData(
    style: ElevatedButton.styleFrom(
      elevation: 0,
      foregroundColor: GColors.white,
      backgroundColor: GColors.primary,
      disabledBackgroundColor: GColors.grey,
      disabledForegroundColor: GColors.grey,
      side: const BorderSide(color: GColors.primary),
      padding: const EdgeInsets.symmetric(vertical: GSizes.sm, horizontal: GSizes.xs),
      textStyle: const TextStyle(
        fontSize: GSizes.fontSizeMd,
        color: GColors.white,
        fontWeight: FontWeight.w600,
      ),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(GSizes.buttonRadius)),
    ),
  );
}
