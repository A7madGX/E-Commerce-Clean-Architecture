import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/image_container.dart';

class ProductCartItem extends StatelessWidget {
  const ProductCartItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Row(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // thumbnail product
        GImageContainer(
          imageUrl: GImageString.productImage7,
          backgroundColor: dark ? GColors.darkerGrey : GColors.light,
          padding: const EdgeInsets.all(GSizes.xs),
          width: 70,
          height: 70,
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Text('Nike', style: Theme.of(context).textTheme.bodySmall),
                  const SizedBox(width: GSizes.xs),
                  const Icon(
                    Iconsax.verify5,
                    size: GSizes.iconXs,
                    color: GColors.primary,
                  ),
                ],
              ),
              Text(
                'Red Nike Sport Shoes',
                style: Theme.of(context).textTheme.titleSmall,
                overflow: TextOverflow.ellipsis,
              ),
              Text.rich(
                TextSpan(children: [
                  TextSpan(text: 'Color: ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'Red ', style: Theme.of(context).textTheme.bodyMedium),
                  TextSpan(text: 'Size: ', style: Theme.of(context).textTheme.bodySmall),
                  TextSpan(text: 'UK 08 ', style: Theme.of(context).textTheme.bodyMedium),
                ]),
              )
            ],
          ),
        )
        // details
      ],
    );
  }
}
