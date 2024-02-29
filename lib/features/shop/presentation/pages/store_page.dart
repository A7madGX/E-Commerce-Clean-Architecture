import 'package:badges/badges.dart' as badges;
import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/texts.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/search_field.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/colors.dart';
import '../widgets/store_widgets/brand_tile.dart';

class StorePage extends StatelessWidget {
  const StorePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: GCustomAppBar(
        showBackArrow: false,
        title: Text(GTextStrings.store, style: Theme.of(context).textTheme.headlineMedium),
        actions: [
          badges.Badge(
            badgeStyle: const badges.BadgeStyle(badgeColor: GColors.black),
            position: badges.BadgePosition.topEnd(top: -5, end: 5),
            badgeContent: const Text(
              '3',
              style: TextStyle(color: GColors.white),
            ),
            child: IconButton(
              onPressed: () {},
              icon: Icon(Iconsax.shopping_bag, color: dark ? GColors.white : GColors.black),
            ),
          )
        ],
      ),
      body: NestedScrollView(
        headerSliverBuilder: (_, isInnerBoxScrollable) {
          return [
            SliverAppBar(
              backgroundColor: dark ? GColors.dark : GColors.light,
              expandedHeight: 440,
              pinned: true,
              floating: true,
              automaticallyImplyLeading: false,
              flexibleSpace: Padding(
                padding: const EdgeInsets.all(GSizes.defaultSpace),
                child: ListView(
                  shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  children: [
                    const SizedBox(height: GSizes.spaceBtwItems),
                    GSearchField(
                      border: BorderSide(color: GColors.darkGrey.withOpacity(0.5)),
                      transparent: false,
                      searchIcon: const Icon(Iconsax.search_normal),
                      hintText: 'Search in store',
                      controller: TextEditingController(),
                    ),
                    const SizedBox(height: GSizes.spaceBtwSections),
                    GHeaderTitle(
                      header: 'Featured Brands',
                      hasButton: true,
                      buttonText: 'View all',
                      onClick: () {},
                    ),
                    const SizedBox(height: GSizes.spaceBtwItems),
                    GridView.count(
                      padding: EdgeInsets.zero,
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      crossAxisCount: 2,
                      crossAxisSpacing: GSizes.gridViewSpacing,
                      mainAxisSpacing: GSizes.gridViewSpacing,
                      childAspectRatio: 2,
                      children: [for (var i = 0; i < 4; i++) const GBrandTile()],
                    ),
                  ],
                ),
              ),
            )
          ];
        },
        body: const SizedBox(),
      ),
    );
  }
}
