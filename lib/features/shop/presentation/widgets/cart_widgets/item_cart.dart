import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/cart_widgets/product_add_delete_item.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/cart_widgets/product_cart_item.dart';

import '../../../../../core/constants/sizes.dart';

class ItemCart extends StatelessWidget {
  final bool withAddDeleteButton;
  const ItemCart({
    super.key,
    this.withAddDeleteButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const ProductCartItem(),
        if (withAddDeleteButton) ...[
          const SizedBox(height: GSizes.spaceBtwItems),
          const ProductAddDeleteCart()
        ]
      ],
    );
  }
}
