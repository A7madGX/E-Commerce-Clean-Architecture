import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../widgets/home_widgets/product_vertical_tile.dart';

class FavouritesPage extends StatefulWidget {
  const FavouritesPage({super.key});

  @override
  State<FavouritesPage> createState() => _FavouritesPageState();
}

class _FavouritesPageState extends State<FavouritesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GCustomAppBar(
        title: Text(GTextStrings.wishlist, style: Theme.of(context).textTheme.headlineMedium),
        showBackArrow: false,
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Iconsax.add)),
        ],
      ),
      body: CustomScrollView(
        slivers: [
          SliverPadding(
            padding: const EdgeInsets.all(GSizes.defaultSpace),
            sliver: SliverGrid.count(
              crossAxisCount: 2,
              crossAxisSpacing: GSizes.gridViewSpacing,
              mainAxisSpacing: GSizes.gridViewSpacing,
              childAspectRatio: 0.57,
              children: [for (var i = 0; i < 20; i++) const ProductVerticalTile()],
            ),
          )
        ],
      ),
    );
  }
}
