import 'package:flutter/material.dart';

import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/choice_chip.dart';
import '../../../../../core/widgets/header.dart';

class ProductColorSection extends StatelessWidget {
  const ProductColorSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const GHeaderTitle(header: 'Color'),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        Wrap(
          spacing: 8,
          children: [
            GChoiceChip(
              label: 'Red',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'Green',
              selected: true,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'Blue',
              selected: false,
              onSelected: (value) {},
            ),
            GChoiceChip(
              label: 'Yellow',
              selected: false,
              onSelected: (value) {},
            ),
          ],
        ),
      ],
    );
  }
}
