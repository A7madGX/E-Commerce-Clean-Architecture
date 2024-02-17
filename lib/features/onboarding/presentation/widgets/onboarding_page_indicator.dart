import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/device/device_utli.dart';
import '../../../../core/helpers/helper_functions.dart';

class OnBoardingPageIndicator extends StatelessWidget {
  const OnBoardingPageIndicator({
    super.key,
    required this.pageCtrl,
  });

  final PageController pageCtrl;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: GSizes.defaultSpace,
      bottom: GDeviceUtils.getBottomNavigationBarHeight() + 25,
      child: SmoothPageIndicator(
        controller: pageCtrl,
        onDotClicked: context.read<OnBoardingProvider>().scrollToPage,
        effect: ExpandingDotsEffect(
          activeDotColor: GHelperFunctions.isDarkMode(context) ? GColors.light : GColors.dark,
          dotHeight: 6,
        ),
        count: 3,
      ),
    );
  }
}
