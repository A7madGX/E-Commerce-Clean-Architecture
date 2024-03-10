import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/circular_icon.dart';
import '../../../../../core/widgets/custom_clipped_container.dart';
import '../../../../../core/widgets/image_container.dart';
import '../home_widgets/app_bar.dart';

class ProductDetailsTopSection extends StatelessWidget {
  const ProductDetailsTopSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);

    return GClippedContainer(
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: BoxDecoration(color: dark ? GColors.darkerGrey : GColors.light),
        child: Stack(
          alignment: Alignment.center,
          children: [
            const GImageContainer(
              imageUrl: GImageString.productImage1,
              padding: EdgeInsets.all(GSizes.defaultSpace),
            ),
            GCustomAppBar(
              leadingOnPressed: () {
                Navigator.of(context).pop();
              },
              actions: const [
                GCircularIcon(
                  icon: Iconsax.heart5,
                  color: Colors.red,
                )
              ],
            ),
            Positioned(
              height: 80,
              bottom: 30,
              right: 0,
              left: GSizes.spaceBtwItems,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: [
                  for (var i = 0; i < 10; i++) ...[
                    GImageContainer(
                      width: 80,
                      padding: const EdgeInsets.all(GSizes.sm),
                      boxBorder: Border.all(color: GColors.primary),
                      imageUrl: GImageString.productImage2,
                      backgroundColor:
                          GHelperFunctions.isDarkMode(context) ? GColors.black : GColors.white,
                    ),
                    const SizedBox(width: GSizes.spaceBtwItems)
                  ]
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
