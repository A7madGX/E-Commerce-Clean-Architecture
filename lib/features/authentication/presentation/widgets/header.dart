import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';

import '../../../../core/constants/image_strings.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/helpers/helper_functions.dart';

class Header extends StatelessWidget {
  const Header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Column(
          children: [
            Animate(
              onComplete: (controller) => controller.repeat(min: 0.5, reverse: true),
              delay: 3.seconds,
              effects: GAnimations.logoAnimation,
              child: Image.asset(
                GImageString.logo,
                width: GHelperFunctions.screenWidth(context) * 0.2,
                height: 110,
              ),
            ),
            Text(
              GTextStrings.loginTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
          ],
        ),
        const SizedBox(
          height: GSizes.sm,
        ),
        Text(
          GTextStrings.loginBody,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
