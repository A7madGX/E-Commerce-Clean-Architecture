import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/helpers/helper_functions.dart';

class SignInDivider extends StatelessWidget {
  const SignInDivider({
    super.key,
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
          GTextStrings.orSignInWith,
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
