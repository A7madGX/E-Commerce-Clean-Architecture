import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_status_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/product_title_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/product_details_widgets/sale_price_section.dart';

import '../../../../../core/constants/sizes.dart';
import 'brand_section.dart';

class ProductMetaDataSection extends StatelessWidget {
  const ProductMetaDataSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        SalePriceSection(),
        SizedBox(height: GSizes.spaceBtwItems / 1.5),
        ProductTitleSection(),
        SizedBox(height: GSizes.spaceBtwItems / 1.5),
        ProductBrandSection(),
        SizedBox(height: GSizes.spaceBtwItems / 1.5),
        ProductStatusSection(),
      ],
    );
  }
}
