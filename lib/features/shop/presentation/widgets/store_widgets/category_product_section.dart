import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';

import '../home_widgets/product_vertical_tile.dart';
import 'brand_show_case.dart';

class GCategoryProduct extends StatelessWidget {
  const GCategoryProduct({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          Padding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            child: Column(
              children: [
                const GBrandShowCase(),
                const SizedBox(height: GSizes.spaceBtwItems),
                const GBrandShowCase(),
                const SizedBox(height: GSizes.spaceBtwItems),
                GHeaderTitle(
                  header: 'You might like',
                  hasButton: true,
                  buttonText: 'View all',
                  onClick: () {},
                ),
                const SizedBox(height: GSizes.spaceBtwItems),
                GridView.count(
                  physics: const NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  crossAxisCount: 2,
                  crossAxisSpacing: GSizes.gridViewSpacing,
                  mainAxisSpacing: GSizes.gridViewSpacing,
                  childAspectRatio: 0.57,
                  children: AnimateList(
                    delay: 1000.ms,
                    interval: 100.ms,
                    effects: GAnimations.gridAnimation,
                    children: [for (var i = 0; i < 5; i++) const ProductVerticalTile()],
                  ),
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
