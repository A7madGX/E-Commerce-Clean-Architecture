import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/price_and_add.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/product_vertical_tile.dart';

import '../../../../../core/constants/sizes.dart';

class GDetails extends StatelessWidget {
  const GDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(
        top: GSizes.sm,
        left: GSizes.sm,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ProductTitle(),
          SizedBox(height: GSizes.spaceBtwItems / 2),
          ProductBrand(),
          Spacer(),
          PriceAndAdd()
        ],
      ),
    );
  }
}
