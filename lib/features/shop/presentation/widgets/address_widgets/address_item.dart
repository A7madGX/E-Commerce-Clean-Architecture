import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';

class AddressItem extends StatelessWidget {
  final bool selected;
  const AddressItem({
    super.key,
    required this.selected,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Container(
      width: double.infinity,
      padding: const EdgeInsets.all(GSizes.md),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
        color: selected ? GColors.primary.withOpacity(0.5) : Colors.transparent,
        border: Border.all(
          color: dark ? GColors.darkerGrey : GColors.grey,
        ),
      ),
      margin: const EdgeInsets.only(bottom: GSizes.spaceBtwItems),
      child: Stack(
        children: [
          Positioned(
            top: 0,
            right: 5,
            child: Icon(
              selected ? Iconsax.tick_circle5 : null,
              color: selected
                  ? dark
                      ? GColors.light
                      : GColors.dark
                  : null,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Medoamz',
                overflow: TextOverflow.ellipsis,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(height: GSizes.sm / 2),
              const Text(
                '(+02) 1127719168',
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
              const SizedBox(height: GSizes.sm / 2),
              const Text(
                '401 Ramsis, Abasseya City, Cairo Egypt',
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                softWrap: true,
              ),
            ],
          )
        ],
      ),
    );
  }
}
