import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../constants/colors.dart';

class GRatingBar extends StatelessWidget {
  final double value;
  const GRatingBar({
    super.key,
    required this.value,
  });

  @override
  Widget build(BuildContext context) {
    return RatingBarIndicator(
      itemSize: 20,
      rating: value,
      unratedColor: GColors.grey,
      itemBuilder: (context, _) => const Icon(
        Iconsax.star1,
        color: GColors.primary,
      ),
    );
  }
}
