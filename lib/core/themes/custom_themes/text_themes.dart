import 'package:flutter/material.dart';

import '../../constants/colors.dart';

class GTextTheme {
  GTextTheme._();

  /// Customizable Light Text Theme
  static TextTheme lightTextTheme = TextTheme(
      headlineLarge: const TextStyle()
          .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: GColors.dark),
      headlineMedium: const TextStyle()
          .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: GColors.dark),
      headlineSmall: const TextStyle()
          .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.dark),
      titleLarge: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: GColors.dark),
      titleMedium: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: GColors.dark),
      titleSmall: const TextStyle()
          .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: GColors.dark),
      bodyLarge: const TextStyle()
          .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.dark),
      bodyMedium: const TextStyle()
          .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: GColors.dark),
      bodySmall: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.w500, color: GColors.dark.withOpacity(0.5)),
      labelLarge: const TextStyle()
          .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.dark),
      labelMedium: const TextStyle().copyWith(
          fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.dark.withOpacity(0.5)),
      labelSmall: const TextStyle().copyWith(
          fontSize: 10.0, fontWeight: FontWeight.normal, color: GColors.dark.withOpacity(0.5))
// TextTheme
      );

  /// Customizable Dark Text Theme
  static TextTheme darkTextTheme = TextTheme(
    headlineLarge: const TextStyle()
        .copyWith(fontSize: 32.0, fontWeight: FontWeight.bold, color: GColors.light),
    headlineMedium: const TextStyle()
        .copyWith(fontSize: 24.0, fontWeight: FontWeight.w600, color: GColors.light),
    headlineSmall: const TextStyle()
        .copyWith(fontSize: 18.0, fontWeight: FontWeight.w600, color: GColors.light),
    titleLarge: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w600, color: GColors.light),
    titleMedium: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w500, color: GColors.light),
    titleSmall: const TextStyle()
        .copyWith(fontSize: 16.0, fontWeight: FontWeight.w400, color: GColors.light),
    bodyLarge: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.w500, color: GColors.light),
    bodyMedium: const TextStyle()
        .copyWith(fontSize: 14.0, fontWeight: FontWeight.normal, color: GColors.light),
    bodySmall: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.w500, color: GColors.light.withOpacity(0.5)),
    labelLarge: const TextStyle()
        .copyWith(fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.light),
    labelMedium: const TextStyle().copyWith(
        fontSize: 12.0, fontWeight: FontWeight.normal, color: GColors.light.withOpacity(0.5)),
    labelSmall: const TextStyle().copyWith(
        fontSize: 10.0, fontWeight: FontWeight.normal, color: GColors.light.withOpacity(0.5)),
  );
} // TextTheme
