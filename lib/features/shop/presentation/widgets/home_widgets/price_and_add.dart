import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';

class PriceAndAdd extends StatelessWidget {
  const PriceAndAdd({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          child: FittedBox(
            alignment: Alignment.centerLeft,
            fit: BoxFit.scaleDown,
            child: Text(
              '\$35.5',
              style: Theme.of(context).textTheme.headlineSmall,
            ),
          ),
        ),
        const SizedBox(
          width: 20,
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
