import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';

import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/header.dart';
import 'category_with_label.dart';

class GCategorySection extends StatelessWidget {
  const GCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final Map<String, List<String>> categories = {
      'cloth': [GImageString.clothIcon, GImageString.clothText],
      'shoe': [GImageString.shoeIcon, GImageString.shoeText],
      'cosmetic': [GImageString.cosmeticIcon, GImageString.cosmeticText],
      'animal': [GImageString.animalIcon, GImageString.animalText],
      'furniture': [GImageString.furnitureIcon, GImageString.furnitureText],
      'jewelery': [GImageString.jeweleryIcon, GImageString.jeweleryText],
      'sport': [GImageString.sportIcon, GImageString.sportText],
      'toy': [GImageString.toyIcon, GImageString.toyText],
      'phone': [GImageString.phoneIcon, GImageString.phoneText],
    };
    return Column(
      children: [
        Animate(
          effects: GAnimations.titleAnimation,
          child: const GHeaderTitle(
            header: 'Popular Categories',
          ),
        ),
        const SizedBox(
          height: GSizes.spaceBtwItems,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          clipBehavior: Clip.none,
          child: Row(
            children: AnimateList(
              interval: 150.ms,
              effects: GAnimations.categoryListAnimation,
              children: [
                for (var category in categories.entries) ...[
                  CategoryWithLabel(category: category),
                  const SizedBox(
                    width: GSizes.spaceBtwItems,
                  )
                ],
              ],
            ),
          ),
        )
      ],
    );
  }
}
