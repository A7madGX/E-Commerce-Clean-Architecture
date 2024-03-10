import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/grid_products.dart';
import 'package:iconsax/iconsax.dart';

class ViewAllProductsPage extends StatelessWidget {
  const ViewAllProductsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(title: Text('Popular Products')),
      body: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: DropdownButtonFormField(
                onChanged: (value) {},
                decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.sort),
                  contentPadding: EdgeInsets.symmetric(horizontal: GSizes.sm, vertical: GSizes.md),
                ),
                items: ['Name', 'Higher Price', 'Lower Price', 'Sale', 'Newest', 'Popularity']
                    .map((filterElement) => DropdownMenuItem(
                          value: filterElement,
                          child: Text(filterElement),
                        ))
                    .toList(),
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: GSizes.spaceBtwSections)),
            const GGridProduct(),
          ],
        ),
      ),
    );
  }
}
