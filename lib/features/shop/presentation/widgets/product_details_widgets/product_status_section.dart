import 'package:flutter/material.dart';

import '../../../../../core/constants/sizes.dart';

class ProductStatusSection extends StatelessWidget {
  const ProductStatusSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.baseline,
      textBaseline: TextBaseline.alphabetic,
      children: [
        Text(
          'Status:',
          style: Theme.of(context).textTheme.bodySmall,
        ),
        const SizedBox(width: GSizes.spaceBtwItems / 2),
        Text(
          'In Stock',
          style: Theme.of(context).textTheme.titleMedium,
        )
      ],
    );
  }
}
