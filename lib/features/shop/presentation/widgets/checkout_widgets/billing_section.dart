import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/checkout_widgets/payment_method_section.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/checkout_widgets/shipping_address_section.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import 'billing_fees_section.dart';

class BillingSection extends StatelessWidget {
  const BillingSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(GSizes.md),
      decoration: BoxDecoration(
        color: GHelperFunctions.isDarkMode(context) ? GColors.black : GColors.white,
        border: Border.all(
            width: 2,
            color: GHelperFunctions.isDarkMode(context) ? GColors.darkerGrey : GColors.light),
        borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
      ),
      child: const Column(
        children: [
          BillingPrice(),
          SizedBox(height: GSizes.spaceBtwItems),
          Divider(),
          SizedBox(height: GSizes.spaceBtwItems),
          PaymentMethodSection(),
          SizedBox(height: GSizes.spaceBtwSections),
          ShippingAddressSection(),
        ],
      ),
    );
  }
}
