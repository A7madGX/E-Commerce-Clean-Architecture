import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/widgets/divider.dart';

class SignUpFooter extends StatelessWidget {
  const SignUpFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: GSizes.spaceBtwSections,
        ),
        const DividerWithLabel(label: GTextStrings.orSignUpWith),
        const SizedBox(
          height: GSizes.spaceBtwItems,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: GColors.darkGrey,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  GImageString.googleLogo,
                  width: GSizes.iconMd,
                  height: GSizes.iconMd,
                ),
              ),
            ),
            const SizedBox(
              width: GSizes.spaceBtwItems,
            ),
            Container(
              decoration: BoxDecoration(
                shape: BoxShape.circle,
                border: Border.all(
                  color: GColors.darkGrey,
                ),
              ),
              child: IconButton(
                onPressed: () {},
                icon: Image.asset(
                  GImageString.facebookLogo,
                  width: GSizes.iconMd,
                  height: GSizes.iconMd,
                ),
              ),
            )
          ],
        ),
      ],
    );
  }
}
