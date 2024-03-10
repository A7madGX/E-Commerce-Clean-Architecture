import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_attributes_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_bottom_navigation_bar.dart';

import '../widgets/product_details_widgets/checkout_button_section.dart';
import '../widgets/product_details_widgets/meta_data_section.dart';
import '../widgets/product_details_widgets/product_description_section.dart';
import '../widgets/product_details_widgets/product_review_section.dart';
import '../widgets/product_details_widgets/product_top_section.dart';
import '../widgets/product_details_widgets/rating_and_share.dart';

class ProductDetailsPage extends StatelessWidget {
  const ProductDetailsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).scaffoldBackgroundColor,
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ProductDetailsTopSection(),
            Padding(
              padding: EdgeInsets.only(
                right: GSizes.defaultSpace,
                left: GSizes.defaultSpace,
                bottom: GSizes.defaultSpace,
              ),
              child: Column(
                children: [
                  RatingAndShareSection(),
                  ProductMetaDataSection(),
                  SizedBox(height: GSizes.spaceBtwItems),
                  ProductAttributeSection(),
                  SizedBox(height: GSizes.spaceBtwSections),
                  CheckoutButtonSection(),
                  SizedBox(height: GSizes.spaceBtwSections),
                  ProductDescriptionSection(),
                  SizedBox(height: GSizes.spaceBtwItems),
                  Divider(),
                  SizedBox(height: GSizes.spaceBtwItems),
                  ProductReviewSection(),
                  SizedBox(height: GSizes.spaceBtwSections),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: const ProductBottomNavBar(),
    );
  }
}
