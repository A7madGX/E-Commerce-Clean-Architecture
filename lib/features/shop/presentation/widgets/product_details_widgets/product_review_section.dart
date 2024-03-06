import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/header.dart';

class ProductReviewSection extends StatelessWidget {
  const ProductReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        const GHeaderTitle(header: 'Reviews (199)'),
        IconButton(onPressed: () {}, icon: const Icon(Iconsax.arrow_right_3, size: 18)),
      ],
    );
  }
}
