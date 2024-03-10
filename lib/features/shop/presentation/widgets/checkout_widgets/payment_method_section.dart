import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/header.dart';
import '../../../../../core/widgets/image_container.dart';

class PaymentMethodSection extends StatelessWidget {
  const PaymentMethodSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GHeaderTitle(
          header: 'Payment Method',
          buttonText: 'Change',
          hasButton: true,
          onClick: () {},
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Row(
          children: [
            GImageContainer(
              imageUrl: GImageString.paypal,
              width: 60,
              height: 35,
              backgroundColor: GHelperFunctions.isDarkMode(context) ? GColors.light : GColors.white,
              padding: const EdgeInsets.all(GSizes.sm),
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Text(
              'Paypal',
              style: Theme.of(context).textTheme.bodyLarge,
            ),
          ],
        )
      ],
    );
  }
}
