import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/sizes.dart';
import '../../../../core/helpers/helper_functions.dart';

class OnBoardingPage extends StatelessWidget {
  final String url;
  final String title;
  final String subtitle;
  const OnBoardingPage({super.key, required this.url, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(GSizes.defaultSpace),
      child: Column(
        children: [
          Lottie.asset(
            url,
            width: GHelperFunctions.screenWidth(context) * 0.8,
            height: GHelperFunctions.screenHeight(context) * 0.6,
          ),
          Text(
            title,
            style: Theme.of(context).textTheme.headlineMedium,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: GSizes.spaceBtwItems,
          ),
          Text(
            subtitle,
            style: Theme.of(context).textTheme.bodyMedium,
            textAlign: TextAlign.center,
          )
        ],
      ),
    );
  }
}
