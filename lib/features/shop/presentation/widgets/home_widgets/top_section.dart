import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/cart_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/primary_header_container.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/texts.dart';
import '../../../../../core/widgets/search_field.dart';
import 'category_section.dart';

class TopSection extends StatelessWidget {
  const TopSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GPrimaryHeaderContainer(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        children: [
          GCustomAppBar(
            title: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  GTextStrings.homeAppBarTitle,
                  style: Theme.of(context).textTheme.labelMedium!.apply(color: GColors.grey),
                ).animate(delay: 1000.ms).slide(duration: 500.ms, begin: const Offset(0, -3)),
                Text(
                  GTextStrings.homeAppBarSubTitle,
                  style: Theme.of(context).textTheme.headlineSmall!.apply(color: GColors.white),
                ).animate(delay: 2000.ms).fade(duration: 500.ms),
              ],
            ),
            showBackArrow: false,
            actions: [
              badges.Badge(
                badgeStyle: const badges.BadgeStyle(badgeColor: GColors.black),
                position: badges.BadgePosition.topEnd(top: -5, end: 5),
                badgeContent: const Text(
                  '3',
                  style: TextStyle(color: GColors.white),
                ),
                child: IconButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(builder: (context) => const CartPage()),
                    );
                  },
                  icon: const Icon(Iconsax.shopping_bag, color: GColors.white),
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
                horizontal: GSizes.defaultSpace, vertical: GSizes.spaceBtwSections / 2),
            child: GSearchField(
              transparent: false,
              hintText: 'Search in store',
              searchIcon: const Icon(Iconsax.search_normal),
              controller: TextEditingController(),
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: GSizes.defaultSpace),
            child: GCategorySection(),
          ),
          const SizedBox(
            height: GSizes.spaceBtwSections * 1.5,
          ),
        ],
      ),
    );
  }
}
