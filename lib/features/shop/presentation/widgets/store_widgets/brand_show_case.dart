import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/image_container.dart';
import 'brand_tile.dart';

class GBrandShowCase extends StatelessWidget {
  const GBrandShowCase({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(GSizes.md),
      decoration: BoxDecoration(
        color: Colors.transparent,
        border: Border.all(color: GColors.grey),
        borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
      ),
      child: Column(
        children: [
          const GBrandTile(
            padding: EdgeInsets.symmetric(horizontal: GSizes.md, vertical: GSizes.sm),
            hasBorder: false,
          ),
          const SizedBox(
            height: GSizes.md,
          ),
          Row(
            children: [
              Expanded(
                  child: GImageContainer(
                height: 100,
                padding: const EdgeInsets.all(GSizes.md),
                imageUrl: GImageString.productImage1,
                backgroundColor:
                    GHelperFunctions.isDarkMode(context) ? GColors.darkerGrey : GColors.light,
              )),
              const SizedBox(width: GSizes.sm),
              Expanded(
                  child: GImageContainer(
                      height: 100,
                      padding: const EdgeInsets.all(GSizes.md),
                      imageUrl: GImageString.productImage2,
                      backgroundColor: GHelperFunctions.isDarkMode(context)
                          ? GColors.darkerGrey
                          : GColors.light)),
              const SizedBox(width: GSizes.sm),
              Expanded(
                  child: GImageContainer(
                      height: 100,
                      padding: const EdgeInsets.all(GSizes.md),
                      imageUrl: GImageString.productImage3,
                      backgroundColor: GHelperFunctions.isDarkMode(context)
                          ? GColors.darkerGrey
                          : GColors.light)),
            ],
          ),
        ],
      ),
    );
  }
}
