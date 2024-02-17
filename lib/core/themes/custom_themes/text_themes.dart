import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class GTextTheme {
  GTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle()
          .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: GColors.black),
      headlineMedium: const TextStyle()
          .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: GColors.black),
      headlineSmall: const TextStyle()
          .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.black),
      titleLarge: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: GColors.black),
      titleMedium: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: GColors.black),
      titleSmall: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: GColors.black),
      bodyLarge: const TextStyle()
          .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.black),
      bodyMedium: const TextStyle()
          .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: GColors.black),
      bodySmall: const TextStyle().copyWith(
          fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.black.withOpacity(0.5)),
      labelLarge: const TextStyle()
          .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.black),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.black.withOpacity(0.5)),
      labelSmall: const TextStyle().copyWith(
          fontSize: 10.0, fontWeight: FontWeight.normal, color: GColors.black.withOpacity(0.5))
// TextTheme
      );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: GColors.white),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: GColors.white),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.white),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: GColors.white),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: GColors.white),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: GColors.white),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.white),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: GColors.white),
    bodySmall: const TextStyle().copyWith(
        fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.white.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.white),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.white.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 10.0, fontWeight: FontWeight.normal, color: GColors.white.withOpacity(0.5)),
  );
} // TextTheme
