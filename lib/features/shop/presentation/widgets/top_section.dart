import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/app_bar.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/primary_header_container.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/texts.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GPrimaryHeaderContainer(
      child: Column(
        children: [
          GCustomAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GTextStrings.homeAppBarTitle,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: GColors.grey),
                ),
                Text(
                  GTextStrings.homeAppBarSubTitle,
                  style: Theme.of(context).textTheme.headlineSmall!.apply(color: GColors.white),
                ),
              ],
            ),
            showBackArrow: false,
            actions: [
              badges.Badge(
                badgeStyle: const badges.BadgeStyle(badgeColor: GColors.black),
                position: badges.BadgePosition.topEnd(top: -5, end: 5),
                badgeContent: const Text('3'),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Iconsax.shopping_bag, color: GColors.white),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
