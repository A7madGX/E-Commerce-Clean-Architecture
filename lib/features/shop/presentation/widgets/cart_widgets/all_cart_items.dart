import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

import '../../../../../core/constants/sizes.dart';
import 'item_cart.dart';

class AllCartItems extends StatelessWidget {
  final bool shrinkWrap;
  final bool withAddDeleteButton;
  const AllCartItems({
    super.key,
    this.shrinkWrap = false,
    this.withAddDeleteButton = true,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: shrinkWrap,
      itemBuilder: (BuildContext context, int index) => ItemCart(
        withAddDeleteButton: withAddDeleteButton,
      ).animate().scale(),
      separatorBuilder: (BuildContext context, int index) =>
          const SizedBox(height: GSizes.spaceBtwSections),
      itemCount: 5,
    );
  }
}
