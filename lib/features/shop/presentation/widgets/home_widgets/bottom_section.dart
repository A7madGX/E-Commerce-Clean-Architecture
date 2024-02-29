import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/slider_bottom.dart';

import 'grid_products.dart';

class BottomSection extends StatelessWidget {
  const BottomSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: GSizes.defaultSpace, vertical: GSizes.defaultSpace / 2),
      child: Column(
        children: [
          const SliderBottomSection(),
          const SizedBox(height: GSizes.spaceBtwSections),
          GHeaderTitle(
            header: 'Popular Products',
            hasButton: true,
            buttonText: 'View all',
            onClick: () {},
          ),
          const SizedBox(height: GSizes.spaceBtwItems),
          const GGridProduct(),
        ],
      ),
    );
  }
}
