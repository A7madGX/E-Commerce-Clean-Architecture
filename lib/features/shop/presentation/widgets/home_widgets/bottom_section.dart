import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/slider_bottom.dart';

import 'grid_products.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.symmetric(
          horizontal: GSizes.defaultSpace, vertical: GSizes.defaultSpace / 2),
      sliver: SliverMainAxisGroup(slivers: [
        const SliverToBoxAdapter(
          child: SliderBottomSection(),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: GSizes.spaceBtwSections,
          ),
        ),
        SliverToBoxAdapter(
          child: Animate(
            effects: GAnimations.titleAnimation,
            delay: 500.ms,
            child: GHeaderTitle(
              header: 'Popular Products',
              hasButton: true,
              buttonText: 'View all',
              onClick: () {},
            ),
          ),
        ),
        const SliverToBoxAdapter(
          child: SizedBox(
            height: GSizes.spaceBtwItems,
          ),
        ),
        const GGridProduct()
      ]),
    );
  }
}
