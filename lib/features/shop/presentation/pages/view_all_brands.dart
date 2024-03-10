import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/store_widgets/brand_tile.dart';

class ViewAllBrands extends StatelessWidget {
  const ViewAllBrands({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(title: Text('All Brands')),
      body: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: CustomScrollView(
          slivers: [
            SliverGrid.count(
              crossAxisCount: 2,
              mainAxisSpacing: GSizes.md,
              crossAxisSpacing: GSizes.md,
              childAspectRatio: 1.8,
              children: AnimateList(
                delay: 100.ms,
                effects: GAnimations.gridAnimation,
                interval: 50.ms,
                children: [
                  for (var i = 0; i < 30; i++) const GBrandTile(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
