import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/responses/success/success.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/success_screen.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/cart_widgets/all_cart_items.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';

import '../widgets/checkout_widgets/billing_section.dart';
import '../widgets/checkout_widgets/promocode_section.dart';

class CheckoutPage extends StatelessWidget {
  const CheckoutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: GCustomAppBar(
        title: Text('Order Review', style: Theme.of(context).textTheme.headlineSmall),
      ),
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              // Items Cart
              SizedBox(
                height: 140 + GSizes.spaceBtwSections,
                child: AllCartItems(withAddDeleteButton: false),
              ),

              // PromoCode Section
              SizedBox(height: GSizes.spaceBtwSections),
              PromoCodeSection(),

              // Billing Section
              SizedBox(height: GSizes.spaceBtwSections),
              BillingSection()
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: ElevatedButton(
          onPressed: () {
            Navigator.of(context).push(
              MaterialPageRoute(
                builder: (context) => SuccessScreen(
                  success: SuccessMessage(
                      title: 'Payment Success!',
                      message: 'Your payment has been successful.',
                      successImageUrl: GImageString.emailVerifiedImage,
                      labelButton: 'Continue',
                      onContinue: () {}),
                ),
              ),
            );
          },
          child: const Text('Checkout \$2650.54'),
        ),
      ),
    );
  }
}
