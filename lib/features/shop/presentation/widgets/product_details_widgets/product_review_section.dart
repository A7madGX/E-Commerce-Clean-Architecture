import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/product_ratings_and_reviews.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/widgets/header.dart';

class ProductReviewSection extends StatelessWidget {
  const ProductReviewSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ProductRatingAndReview()),
        );
      },
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          GHeaderTitle(header: 'Reviews (199)'),
          Icon(Iconsax.arrow_right_3, size: 18),
        ],
      ),
    );
  }
}
