import 'package:flutter/material.dart';

class ProductTitleSection extends StatelessWidget {
  const ProductTitleSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: Text(
            'Green Nike Sport Shoes',
            style: Theme.of(context).textTheme.headlineSmall,
            overflow: TextOverflow.ellipsis,
            maxLines: 2,
          ),
        ),
      ],
    );
  }
}
