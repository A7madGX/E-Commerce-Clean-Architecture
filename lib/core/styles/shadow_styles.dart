import 'package:flutter/material.dart';

import '../constants/colors.dart';

class GShadowStyle {
  GShadowStyle._();
  static final verticalProductShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow

  static final horizontalProductShadow = BoxShadow(
      color: GColors.darkGrey.withOpacity(0.1),
      blurRadius: 50,
      spreadRadius: 7,
      offset: const Offset(0, 2)); // BoxShadow
}
