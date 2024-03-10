import 'package:flutter/material.dart';

import '../../../../../core/constants/sizes.dart';

class BillingPrice extends StatelessWidget {
  const BillingPrice({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text('Subtotal'),
            Text('\$256.0'),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),

        // Shipping Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Shipping Fees'),
            Text('\$50.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),

        // Total Fees
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Total Fees'),
            Text('\$50.0', style: Theme.of(context).textTheme.labelLarge),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),

        // Order Total
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Order Total'),
            Text('\$306.0', style: Theme.of(context).textTheme.titleMedium),
          ],
        ),
      ],
    );
  }
}
