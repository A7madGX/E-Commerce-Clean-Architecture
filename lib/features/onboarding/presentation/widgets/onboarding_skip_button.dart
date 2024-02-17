import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:provider/provider.dart';

import '../../../../core/constants/sizes.dart';
import '../../../../core/device/device_utli.dart';

class OnBoardingSkipButton extends StatelessWidget {
  const OnBoardingSkipButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: GDeviceUtils.getAppBarHeight(),
        right: GSizes.defaultSpace,
        child: TextButton(
          onPressed: context.read<OnBoardingProvider>().skipPage,
          child: const Text(
            'Skip',
          ),
        ));
  }
}
