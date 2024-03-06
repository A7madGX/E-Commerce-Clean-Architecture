import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/circular_icon.dart';
import 'package:iconsax/iconsax.dart';

class ProductBottomNavBar extends StatelessWidget {
  const ProductBottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
          horizontal: GSizes.defaultSpace, vertical: GSizes.defaultSpace / 2),
      decoration: BoxDecoration(
        color: dark ? GColors.darkerGrey : GColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(GSizes.cardRadiusLg),
          topRight: Radius.circular(GSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              const GCircularIcon(
                icon: Iconsax.minus,
                radius: 20,
                color: GColors.white,
                backgroundColor: GColors.darkGrey,
              ),
              const SizedBox(width: GSizes.spaceBtwItems),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(width: GSizes.spaceBtwItems),
              const GCircularIcon(
                icon: Iconsax.add,
                radius: 20,
                color: GColors.white,
                backgroundColor: GColors.black,
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(GSizes.md),
              backgroundColor: GColors.black,
              side: const BorderSide(color: GColors.black),
            ),
            child: const Text('Add to Cart'),
          )
        ],
      ),
    );
  }
}
