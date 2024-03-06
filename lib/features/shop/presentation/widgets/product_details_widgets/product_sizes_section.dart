import 'package:flutter/material.dart';

import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/choice_chip.dart';
import '../../../../../core/widgets/header.dart';

class ProductSizesSection extends StatelessWidget {
  const ProductSizesSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GHeaderTitle(header: 'Size'),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Wrap(
          spacing: 8,
          children: [
            GChoiceChip(
              label: 'EU 34',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'EU 32',
              selected: true,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'EU 28',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'EU 30',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'EU 30',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'EU 30',
              selected: false,
              onSelected: (value) {},
            )
          ],
        ),
      ],
    );
  }
}
