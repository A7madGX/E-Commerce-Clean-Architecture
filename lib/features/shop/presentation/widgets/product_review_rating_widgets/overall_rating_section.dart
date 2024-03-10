import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';

import '../../../../../core/widgets/ratingbar.dart';
import 'linear_rating_progress.dart';

class OverAllProductRating extends StatelessWidget {
  const OverAllProductRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 3,
          child: Column(
            children: [
              FittedBox(
                fit: BoxFit.scaleDown,
                child: Text('4.8', style: Theme.of(context).textTheme.displayLarge),
              ),
              const FittedBox(
                fit: BoxFit.scaleDown,
                child: GRatingBar(value: 3.5),
              ),
              Text(
                '12,135',
                style: Theme.of(context).textTheme.bodySmall,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        const SizedBox(width: GSizes.md),
        const Expanded(
          flex: 7,
          child: Column(
            children: [
              LinearRatingProgressBar(label: '5', progress: 1.0),
              LinearRatingProgressBar(label: '4', progress: 0.8),
              LinearRatingProgressBar(label: '3', progress: 0.6),
              LinearRatingProgressBar(label: '2', progress: 0.4),
              LinearRatingProgressBar(label: '1', progress: 0.2),
            ],
          ),
        )
      ],
    );
  }
}
