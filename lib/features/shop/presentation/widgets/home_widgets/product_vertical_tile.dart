import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/shadow_styles.dart';
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
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
            color: dark ? GColors.darkerGrey : GColors.light,
            borderRadius: BorderRadius.circular(
              GSizes.productImageRadius,
            ),
            boxShadow: [GShadowStyle.verticalProductShadow]),
        child: Column(
          children: [
            GThumbnailWithTag(dark: dark),
            const Expanded(child: GDetails()),
          ],
        ),
      ),
    );
  }
}

class GDetails extends StatelessWidget {
  const GDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: GSizes.sm,
        left: GSizes.sm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductTitle(),
          SizedBox(height: GSizes.spaceBtwItems / 2),
          ProductBrand(),
          Spacer(),
          PriceAndAdd()
        ],
      ),
    );
  }
}

class PriceAndAdd extends StatelessWidget {
  const PriceAndAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          '\$35.5',
          style: Theme.of(context).textTheme.headlineMedium,
          overflow: TextOverflow.ellipsis,
          maxLines: 1,
        ),
        Container(
          alignment: Alignment.center,
          width: GSizes.iconLg * 1.2,
          height: GSizes.iconLg * 1.2,
          decoration: const BoxDecoration(
            color: GColors.dark,
            borderRadius: BorderRadius.only(
                topLeft: Radius.circular(GSizes.cardRadiusMd),
                bottomRight: Radius.circular(GSizes.productImageRadius)),
          ),
          child: const Icon(
            Iconsax.add,
            color: GColors.white,
          ),
        )
      ],
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
