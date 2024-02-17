import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/sizes.dart';

class GTextFieldTheme {
  GTextFieldTheme._();
  static InputDecorationTheme lightInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: GColors.darkGrey,
    suffixIconColor: GColors.darkGrey,
    // constraints: BoxConstraints.expand(height: 14),
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: Colors.black),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: Colors.black,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: Colors.black.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.borderPrimary)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.borderPrimary)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.darkGrey)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.error)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.warning)),
  );

  static InputDecorationTheme darkInputDecorationTheme = InputDecorationTheme(
    errorMaxLines: 2,
    prefixIconColor: GColors.greyWithOpacity,
    suffixIconColor: GColors.greyWithOpacity,
    // constraints: BoxConstraints.expand(height: 14),
    labelStyle: const TextStyle().copyWith(fontSize: 14, color: GColors.white),
    hintStyle: const TextStyle().copyWith(
      fontSize: 14,
      color: GColors.white,
    ),
    errorStyle: const TextStyle().copyWith(fontStyle: FontStyle.normal),
    floatingLabelStyle: const TextStyle().copyWith(color: GColors.white.withOpacity(0.8)),
    border: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.borderPrimary)),
    enabledBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.borderPrimary)),
    focusedBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.white)),
    errorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.error)),
    focusedErrorBorder: const OutlineInputBorder().copyWith(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
        borderSide: const BorderSide(width: 1, color: GColors.warning)),
  );
}
