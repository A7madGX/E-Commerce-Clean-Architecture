import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';

class SalePriceSection extends StatelessWidget {
  const SalePriceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(vertical: GSizes.xs, horizontal: GSizes.sm),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(GSizes.sm),
            color: GColors.secondary.withOpacity(0.8),
          ),
          child: Text(
            '25%',
            style: Theme.of(context).textTheme.labelLarge!.apply(color: GColors.black),
          ),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Text(
          '\$250',
          style:
              Theme.of(context).textTheme.titleSmall!.apply(decoration: TextDecoration.lineThrough),
        ),
        const SizedBox(width: GSizes.spaceBtwItems),
        Text(
          '\$175',
          style: Theme.of(context).textTheme.headlineMedium,
          overflow: TextOverflow.ellipsis,
        )
      ],
    );
  }
}
