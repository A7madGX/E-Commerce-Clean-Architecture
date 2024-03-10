import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/checkout_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';

import '../widgets/cart_widgets/all_cart_items.dart';

class CartPage extends StatelessWidget {
  const CartPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(title: Text('Cart')),
      body: const Padding(
        padding: EdgeInsets.only(
          left: GSizes.defaultSpace,
          right: GSizes.defaultSpace,
          top: GSizes.defaultSpace,
        ),
        child: AllCartItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context)
                .push(MaterialPageRoute(builder: (context) => const CheckoutPage()));
          },
          child: const Text('Checkout \$2650.54'),
        ),
      ),
    );
  }
}
