import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/circular_icon.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/image_container.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/product_vertical_tile.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../pages/product_details_page.dart';
import '../home_widgets/price_and_add.dart';

class ProductHorizontalTile extends StatelessWidget {
  const ProductHorizontalTile({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(builder: (context) => const ProductDetailsPage()),
        );
      },
      child: Container(
        width: 280,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          color: dark ? GColors.darkerGrey : GColors.softGrey,
          borderRadius: BorderRadius.circular(
            GSizes.productImageRadius,
          ),
        ),
        child: const Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ThumbnailWithTag(),

            // Product Details
            Expanded(child: ProductDetails())
          ],
        ),
      ),
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: GSizes.sm, left: GSizes.sm),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Green Nike Sport Shoes',
            style: Theme.of(context).textTheme.labelLarge!.apply(
                  fontWeightDelta: 2,
                  fontSizeDelta: 2,
                ),
            maxLines: 2,
            textAlign: TextAlign.left,
            overflow: TextOverflow.ellipsis,
          ),
          const SizedBox(height: GSizes.spaceBtwItems / 2),
          const ProductBrand(),
          const Spacer(),
          const PriceAndAdd()
        ],
      ),
    );
  }
}

class ThumbnailWithTag extends StatelessWidget {
  const ThumbnailWithTag({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        GImageContainer(
          imageUrl: GImageString.productImage1,
          backgroundColor: dark ? GColors.dark : GColors.white,
          padding: const EdgeInsets.all(GSizes.sm),
          width: 120,
        ),
        Positioned(
          left: GSizes.sm,
          top: 12,
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: GSizes.xs, horizontal: GSizes.sm),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(GSizes.sm),
              color: GColors.secondary.withOpacity(0.8),
            ),
            child: Text(
              '78%',
              style: Theme.of(context).textTheme.labelLarge!.apply(color: GColors.black),
            ),
          ),
        ),
        Positioned(
          top: 2,
          right: 2,
          child: GCircularIcon(
            icon: Iconsax.heart5,
            color: Colors.red,
            onTap: () {},
          ),
        )
      ],
    );
  }
}
