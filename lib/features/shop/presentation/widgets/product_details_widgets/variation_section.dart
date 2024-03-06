import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/header.dart';

class VariationSection extends StatelessWidget {
  const VariationSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Container(
      padding: const EdgeInsets.all(GSizes.md),
      decoration: BoxDecoration(
        color: dark ? GColors.darkerGrey : GColors.grey,
        borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
      ),
      child: Column(
        children: [
          Row(
            children: [
              GHeaderTitle(header: 'Variation:'),
              SizedBox(width: GSizes.spaceBtwItems),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Text(
                          'Price:',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        const SizedBox(width: GSizes.spaceBtwItems / 2),
                        Flexible(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '\$232.0',
                              style: Theme.of(context)
                                  .textTheme
                                  .labelLarge!
                                  .apply(decoration: TextDecoration.lineThrough),
                            ),
                          ),
                        ),
                        const SizedBox(width: GSizes.xs),
                        Expanded(
                          child: FittedBox(
                            fit: BoxFit.scaleDown,
                            child: Text(
                              '\$185.0',
                              style: Theme.of(context).textTheme.titleLarge,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      children: [
                        Text(
                          'Stock:',
                          style: Theme.of(context).textTheme.bodySmall,
                        ),
                        SizedBox(width: GSizes.spaceBtwItems / 2),
                        Text(
                          'In Stock',
                          style: Theme.of(context).textTheme.titleMedium,
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
          SizedBox(height: GSizes.sm),
          Text(
            'This is a description for the green nike shoes. This is a description for the green nike shoes so be careful. This is a description for the green nike shoes. This is a description for the green nike shoes.',
            style: Theme.of(context).textTheme.bodyMedium,
            maxLines: 4,
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
