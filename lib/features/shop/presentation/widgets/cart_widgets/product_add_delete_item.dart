import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/circular_icon.dart';

class ProductAddDeleteCart extends StatelessWidget {
  const ProductAddDeleteCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      children: [
        const SizedBox(width: 70 + GSizes.spaceBtwItems),
        GCircularIcon(
          icon: Iconsax.minus,
          radius: GSizes.iconSm,
          iconSize: GSizes.md,
          color: dark ? GColors.white : GColors.black,
          backgroundColor: dark ? GColors.darkerGrey : GColors.light,
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Text('2', style: Theme.of(context).textTheme.titleSmall),
        const SizedBox(width: GSizes.spaceBtwItems),
        const GCircularIcon(
          icon: Iconsax.add,
          radius: GSizes.iconSm,
          iconSize: GSizes.md,
          color: GColors.white,
          backgroundColor: GColors.primary,
        ),
        const Spacer(),
        Text('\$296.0', style: Theme.of(context).textTheme.titleLarge)
      ],
    );
  }
}
