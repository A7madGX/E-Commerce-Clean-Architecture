import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/widgets/image_container.dart';

class GBrandTile extends StatelessWidget {
  const GBrandTile({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: GColors.primary,
      highlightColor: GColors.primary,
      borderRadius: BorderRadius.circular(GSizes.md),
      onTap: () {},
      child: Container(
        padding: const EdgeInsets.all(GSizes.sm),
        decoration: BoxDecoration(
          border: Border.all(color: GColors.darkGrey.withOpacity(0.5), width: 2),
          borderRadius: BorderRadius.circular(GSizes.md),
        ),
        child: Row(
          children: [
            Expanded(
              flex: 2,
              child: GImageContainer(
                padding: const EdgeInsets.all(GSizes.xs),
                imageUrl: GImageString.nikeLogo,
                imageColor: GHelperFunctions.isDarkMode(context) ? GColors.white : GColors.black,
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Expanded(
              flex: 3,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Flexible(
                        child: Text(
                          'Nike',
                          maxLines: 1,
                          style: Theme.of(context).textTheme.titleLarge,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      const SizedBox(width: GSizes.xs),
                      const Icon(
                        Iconsax.verify5,
                        color: GColors.primary,
                        size: GSizes.iconXs,
                      ),
                    ],
                  ),
                  Text(
                    '256 products',
                    style: Theme.of(context).textTheme.labelMedium,
                    overflow: TextOverflow.ellipsis,
                  ),
                ],
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems),
          ],
        ),
      ),
    );
  }
}
