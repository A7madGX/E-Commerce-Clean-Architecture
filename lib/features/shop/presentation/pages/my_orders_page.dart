import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:iconsax/iconsax.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(title: Text('My Orders')),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(GSizes.defaultSpace),
          child: Column(
            children: [
              for (var i = 0; i < 10; i++) ...[
                const OrderItem(),
                const SizedBox(height: GSizes.spaceBtwItems)
              ]
            ],
          ),
        ),
      ),
    );
  }
}

class OrderItem extends StatelessWidget {
  const OrderItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: GHelperFunctions.isDarkMode(context) ? GColors.dark : GColors.light,
        border: Border.all(
            width: 2,
            color: GHelperFunctions.isDarkMode(context) ? GColors.darkerGrey : GColors.grey),
        borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          splashColor: GColors.primary.withOpacity(0.5),
          borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
          onTap: () {},
          child: Padding(
            padding: const EdgeInsets.all(GSizes.md),
            child: Column(
              children: [
                Row(
                  children: [
                    const Icon(Iconsax.ship),
                    const SizedBox(width: GSizes.spaceBtwItems / 2),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Processing',
                          style: Theme.of(context).textTheme.bodyLarge!.apply(
                                color: GColors.primary,
                                fontWeightDelta: 1,
                              ),
                        ),
                        Text(
                          '01 Sep 2023',
                          style: Theme.of(context).textTheme.headlineSmall,
                        ),
                      ],
                    ),
                    const Spacer(),
                    const Icon(
                      Iconsax.arrow_right_34,
                      size: GSizes.iconSm,
                    ),
                  ],
                ),
                const SizedBox(height: GSizes.spaceBtwItems),
                Row(
                  children: [
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Iconsax.tag),
                          const SizedBox(width: GSizes.spaceBtwItems / 2),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Order',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '[#245661]',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Expanded(
                      child: Row(
                        children: [
                          const Icon(Iconsax.calendar),
                          const SizedBox(width: GSizes.spaceBtwItems / 2),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Shipping Date',
                                style: Theme.of(context).textTheme.labelMedium,
                              ),
                              Text(
                                '03 Feb 2024',
                                style: Theme.of(context).textTheme.titleMedium,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
