import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/sizes.dart';

class RatingAndShareSection extends StatelessWidget {
  const RatingAndShareSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            const Icon(
              Iconsax.star5,
              color: Colors.yellow,
              size: GSizes.iconMd,
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Text.rich(
              TextSpan(
                children: [
                  TextSpan(text: '5.0 ', style: Theme.of(context).textTheme.bodyLarge),
                  TextSpan(text: '(199)', style: Theme.of(context).textTheme.bodySmall)
                ],
              ),
            ),
          ],
        ),
        IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.share,
              size: GSizes.iconMd,
            ))
      ],
    );
  }
}
