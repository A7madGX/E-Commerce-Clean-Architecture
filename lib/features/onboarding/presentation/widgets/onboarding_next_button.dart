import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/device/device_utli.dart';
import '../../../../core/helpers/helper_functions.dart';

class OnBoardingNextButton extends StatelessWidget {
  const OnBoardingNextButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Positioned(
        right: GSizes.defaultSpace,
        bottom: GDeviceUtils.getBottomNavigationBarHeight(),
        child: ElevatedButton(
          onPressed: context.read<OnBoardingProvider>().nextPage,
          style: ElevatedButton.styleFrom(
              shape: const CircleBorder(),
              backgroundColor: dark ? GColors.primary : GColors.black,
              side: BorderSide(color: dark ? GColors.primary : GColors.black)),
          child: const Icon(Icons.keyboard_arrow_right_rounded),
        ));
  }
}
