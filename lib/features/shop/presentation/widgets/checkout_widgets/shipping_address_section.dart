import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/header.dart';

class ShippingAddressSection extends StatelessWidget {
  const ShippingAddressSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        GHeaderTitle(
          header: 'Shipping Address',
          hasButton: true,
          buttonText: 'Change',
          onClick: () {},
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Medoamz',
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.bodyLarge,
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 2),
            const Row(
              children: [
                Icon(
                  Icons.phone,
                  size: 16,
                  color: GColors.grey,
                ),
                SizedBox(width: GSizes.spaceBtwItems),
                Expanded(
                  child: Text(
                    '(+02) 1127719168',
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                ),
              ],
            ),
            const SizedBox(height: GSizes.spaceBtwItems / 2),
            const Row(
              children: [
                Icon(
                  Icons.location_history,
                  size: 16,
                  color: GColors.grey,
                ),
                SizedBox(width: GSizes.spaceBtwItems),
                Expanded(
                  child: Text(
                    '401 Ramsis, Abasseya City, Cairo Egypt',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    softWrap: true,
                  ),
                ),
              ],
            ),
          ],
        )
      ],
    );
  }
}
