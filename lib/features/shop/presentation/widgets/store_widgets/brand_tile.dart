import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/icon_container.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';

class GBrandTile extends StatelessWidget {
  final EdgeInsetsGeometry? padding;
  final bool hasBorder;
  const GBrandTile({
    super.key,
    this.hasBorder = true,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      splashColor: GColors.primary.withOpacity(0.5),
      highlightColor: GColors.primary,
      borderRadius: BorderRadius.circular(GSizes.md),
      onTap: () {},
      child: Container(
        padding: padding ?? const EdgeInsets.all(GSizes.md),
        decoration: BoxDecoration(
          border: hasBorder ? Border.all(color: GColors.grey) : null,
          borderRadius: BorderRadius.circular(GSizes.md),
        ),
        child: Row(
          children: [
            Flexible(
              child: GCircularImageContainer(
                fit: BoxFit.contain,
                imageUrl: GImageString.nikeLogo,
                padding: GSizes.xs,
                overlayColor: GHelperFunctions.isDarkMode(context) ? GColors.white : GColors.black,
                backgroundColor: Colors.transparent,
              ),
            ),
            const SizedBox(width: GSizes.spaceBtwItems / 2),
            Expanded(
              flex: 2,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Text(
                        'Nike',
                        maxLines: 1,
                        style: Theme.of(context).textTheme.titleLarge,
                        overflow: TextOverflow.ellipsis,
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
