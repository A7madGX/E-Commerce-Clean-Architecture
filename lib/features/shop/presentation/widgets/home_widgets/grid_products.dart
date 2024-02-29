import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/product_vertical_tile.dart';

import '../../../../../core/constants/sizes.dart';

class GGridProduct extends StatelessWidget {
  const GGridProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      padding: EdgeInsets.zero,
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      crossAxisCount: 2,
      crossAxisSpacing: GSizes.gridViewSpacing,
      mainAxisSpacing: GSizes.gridViewSpacing,
      childAspectRatio: 0.55,
      children: [for (var i = 0; i < 50; i++) const ProductVerticalTile()],
    );
  }
}
