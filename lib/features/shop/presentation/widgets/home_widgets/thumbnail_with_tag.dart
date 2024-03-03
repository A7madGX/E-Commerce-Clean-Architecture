import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/image_container.dart';

class GThumbnailWithTag extends StatefulWidget {
  const GThumbnailWithTag({
    super.key,
  });

  @override
  State<GThumbnailWithTag> createState() => _GThumbnailWithTagState();
}

class _GThumbnailWithTagState extends State<GThumbnailWithTag> {
  bool isFavorite = false;
  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return Stack(
      children: [
        GImageContainer(
          imageUrl: GImageString.productImage5,
          backgroundColor: dark ? GColors.dark : GColors.light,
          padding: const EdgeInsets.all(GSizes.sm),
          borderRadius: GSizes.productImageRadius,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: GSizes.sm, vertical: GSizes.xs),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
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
              Container(
                decoration: BoxDecoration(
                  color: dark ? GColors.black.withOpacity(0.9) : GColors.white.withOpacity(0.9),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {
                    setState(() {
                      isFavorite = !isFavorite;
                    });
                  },
                  style: IconButton.styleFrom(
                    padding: EdgeInsets.zero,
                    tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                  ),
                  icon: Icon(
                    isFavorite ? Iconsax.heart5 : Iconsax.heart,
                    color: isFavorite ? Colors.red : GColors.grey,
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
