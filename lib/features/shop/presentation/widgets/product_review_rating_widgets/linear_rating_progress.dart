import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';

class LinearRatingProgressBar extends StatelessWidget {
  final String label;
  final double progress;
  const LinearRatingProgressBar({
    super.key,
    required this.label,
    required this.progress,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Text(label, style: Theme.of(context).textTheme.bodyMedium),
        ),
        Expanded(
          flex: 11,
          child: LinearProgressIndicator(
            value: progress,
            minHeight: 11,
            backgroundColor: GColors.grey,
            borderRadius: BorderRadius.circular(7),
            valueColor: const AlwaysStoppedAnimation(GColors.primary),
          ),
        )
      ],
    );
  }
}
