import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/header.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/image_container.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';

import '../widgets/subcategory_widgets/product_horizontal_tile.dart';

class SubCategoryPage extends StatelessWidget {
  const SubCategoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: GCustomAppBar(title: Text('Sports')),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              GImageContainer(imageUrl: GImageString.banner3),
              SizedBox(height: GSizes.spaceBtwSections),
              SubCategorySection(),
              SizedBox(height: GSizes.spaceBtwSections),
              SubCategorySection(),
              SizedBox(height: GSizes.spaceBtwSections),
              SubCategorySection(),
              SizedBox(height: GSizes.spaceBtwSections),
              SubCategorySection(),
            ],
          ),
        ),
      ),
    );
  }
}

class SubCategorySection extends StatelessWidget {
  const SubCategorySection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GHeaderTitle(
          header: 'Sports Shirts',
          hasButton: true,
          buttonText: 'View all',
          onClick: () {},
        ),
        const SizedBox(height: GSizes.spaceBtwItems / 2),
        const SubCategoryList(),
      ],
    );
  }
}

class SubCategoryList extends StatelessWidget {
  const SubCategoryList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 120,
      child: ListView.separated(
        separatorBuilder: (context, index) => const SizedBox(width: GSizes.spaceBtwItems),
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) => const ProductHorizontalTile(),
      ),
    );
  }
}
