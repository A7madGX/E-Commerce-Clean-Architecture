import 'package:flutter/material.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/header.dart';

class ProductDescriptionSection extends StatelessWidget {
  const ProductDescriptionSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        GHeaderTitle(header: 'Description'),
        SizedBox(height: GSizes.spaceBtwItems),
        ReadMoreText(
          'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry\'s standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum.',
          trimLines: 3,
          trimMode: TrimMode.Line,
          trimCollapsedText: 'Show more',
          trimExpandedText: 'Less',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w800,
          ),
        ),
      ],
    );
  }
}
