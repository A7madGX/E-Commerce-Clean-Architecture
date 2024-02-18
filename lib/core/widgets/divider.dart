import 'package:flutter/material.dart';

import '../constants/colors.dart';
import '../helpers/helper_functions.dart';

class DividerWithLabel extends StatelessWidget {
  final String label;
  const DividerWithLabel({
    super.key,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
              thickness: 0.5,
              color: GHelperFunctions.isDarkMode(context) ? GColors.darkGrey : GColors.grey,
              indent: 60,
              endIndent: 5),
        ),
        Text(
          label,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
              thickness: 0.5,
              color: GHelperFunctions.isDarkMode(context) ? GColors.darkGrey : GColors.grey,
              indent: 5,
              endIndent: 60),
        ),
      ],
    );
  }
}
