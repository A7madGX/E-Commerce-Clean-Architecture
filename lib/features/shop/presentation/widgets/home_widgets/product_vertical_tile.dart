import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/shadow_styles.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/product_tile_details.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/thumbnail_with_tag.dart';
import 'package:iconsax/iconsax.dart';

class ProductVerticalTile extends StatelessWidget {
  const ProductVerticalTile({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: dark ? GColors.darkerGrey : GColors.light,
            borderRadius: BorderRadius.circular(
              GSizes.productImageRadius,
            ),
            boxShadow: [GShadowStyle.verticalProductShadow]),
        child: const Column(
          children: [
            GThumbnailWithTag(),
            Expanded(child: GDetails()),
          ],
        ),
      ),
    );
  }
}

class ProductBrand extends StatelessWidget {
  const ProductBrand({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          'Nike',
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        const SizedBox(
          width: GSizes.xs,
        ),
        const Icon(
          Iconsax.verify5,
          color: GColors.primary,
          size: GSizes.iconSm,
        ),
      ],
    );
  }
}

class ProductTitle extends StatelessWidget {
  const ProductTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      'Purple T-Shirt Cut',
      style: Theme.of(context).textTheme.labelLarge!.apply(fontWeightDelta: 2),
      maxLines: 2,
      textAlign: TextAlign.left,
      overflow: TextOverflow.ellipsis,
    );
  }
}
