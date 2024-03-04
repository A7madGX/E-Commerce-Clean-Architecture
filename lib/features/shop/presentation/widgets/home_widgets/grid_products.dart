import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/product_vertical_tile.dart';

import '../../../../../core/constants/sizes.dart';

class GGridProduct extends StatelessWidget {
  const GGridProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverGrid.count(
        crossAxisCount: 2,
        crossAxisSpacing: GSizes.gridViewSpacing,
        mainAxisSpacing: GSizes.gridViewSpacing,
        childAspectRatio: 0.57,
        children: AnimateList(
          interval: 50.ms,
          effects: GAnimations.gridAnimation,
          children: [for (var i = 0; i < 50; i++) const ProductVerticalTile()],
        ));
  }
}
