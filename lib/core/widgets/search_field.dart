import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/spacing_styles.dart';

import '../constants/sizes.dart';

class GSearchField extends StatelessWidget {
  final TextEditingController controller;
  final bool transparent;
  final Widget searchIcon;
  final String hintText;
  final BorderSide? border;
  const GSearchField({
    super.key,
    required this.transparent,
    required this.searchIcon,
    required this.hintText,
    required this.controller,
    this.border,
  });

  @override
  Widget build(BuildContext context) {
    bool dark = GHelperFunctions.isDarkMode(context);
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        contentPadding: GSpacingStyles.paddingInTextFields,
        prefixIcon: searchIcon,
        hintText: hintText,
        hintStyle: Theme.of(context).textTheme.labelMedium,
        border: OutlineInputBorder(
          borderSide: border ?? BorderSide.none,
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: border ?? BorderSide.none,
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
        ),
        enabledBorder: OutlineInputBorder(
          borderSide: border ?? BorderSide.none,
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
        ),
        filled: !transparent,
        fillColor: transparent
            ? null
            : dark
                ? GColors.dark
                : GColors.light,
      ),
    );
  }
}
