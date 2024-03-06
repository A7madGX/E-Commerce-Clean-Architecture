import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_color_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_sizes_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/variation_section.dart';

class ProductAttributeSection extends StatelessWidget {
  const ProductAttributeSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        VariationSection(),
        SizedBox(height: GSizes.spaceBtwItems),
        ProductColorSection(),
        SizedBox(height: GSizes.spaceBtwItems),
        ProductSizesSection()
      ],
    );
  }
}
