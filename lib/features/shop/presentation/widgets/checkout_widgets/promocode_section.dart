import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';

class PromoCodeSection extends StatelessWidget {
  const PromoCodeSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(
          top: GSizes.sm, bottom: GSizes.sm, right: GSizes.sm, left: GSizes.md),
      decoration: BoxDecoration(
        color: GHelperFunctions.isDarkMode(context) ? GColors.black : GColors.white,
        border: Border.all(
            width: 2,
            color: GHelperFunctions.isDarkMode(context) ? GColors.darkerGrey : GColors.light),
        borderRadius: BorderRadius.circular(GSizes.cardRadiusMd),
      ),
      child: Row(
        children: [
          Expanded(
            child: TextFormField(
              decoration: const InputDecoration(
                  hintText: 'Have a promo code? Enter here',
                  border: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  errorBorder: InputBorder.none,
                  disabledBorder: InputBorder.none,
                  enabledBorder: InputBorder.none),
            ),
          ),
          SizedBox(
            width: 80,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                foregroundColor: GHelperFunctions.isDarkMode(context)
                    ? GColors.white.withOpacity(0.5)
                    : GColors.dark.withOpacity(0.5),
                backgroundColor: Colors.grey.withOpacity(0.2),
                side: BorderSide(color: GColors.grey.withOpacity(0.1)),
              ),
              child: const Text('Apply'),
            ),
          )
        ],
      ),
    );
  }
}
