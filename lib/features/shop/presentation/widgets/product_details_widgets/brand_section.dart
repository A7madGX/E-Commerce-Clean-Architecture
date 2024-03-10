import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/icon_container.dart';

class ProductBrandSection extends StatelessWidget {
  const ProductBrandSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.all(GSizes.sm),
          decoration: BoxDecoration(
            color: GHelperFunctions.isDarkMode(context) ? GColors.dark : GColors.light,
            borderRadius: BorderRadius.circular(GSizes.sm),
          ),
          child: Row(
            children: [
              GCircularImageContainer(
                backgroundColor: Colors.transparent,
                imageUrl: GImageString.nikeLogo,
                overlayColor: GHelperFunctions.isDarkMode(context) ? GColors.white : GColors.black,
                radius: GSizes.iconXs,
                padding: 0,
                fit: BoxFit.contain,
              ),
              const SizedBox(width: GSizes.xs),
              Text(
                'Nike',
                maxLines: 1,
                style: Theme.of(context).textTheme.titleLarge,
                overflow: TextOverflow.ellipsis,
              ),
            ],
          ),
        ),
        // const SizedBox(width: GSizes.xs),
        // const Icon(
        //   Iconsax.verify5,
        //   color: GColors.primary,
        //   size: GSizes.iconXs,
        // )
      ],
    );
  }
}
