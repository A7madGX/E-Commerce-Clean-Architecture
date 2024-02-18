import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/responses/success/success.dart';
import 'package:lottie/lottie.dart';

import '../constants/sizes.dart';
import '../styles/spacing_styles.dart';

class SuccessScreen extends StatelessWidget {
  final SuccessMessage success;

  const SuccessScreen({
    super.key,
    required this.success,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: GSpacingStyles.paddingWithAppBarHeightAndDefault,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Lottie.asset(
              success.successImageUrl,
              height: GHelperFunctions.screenHeight(context) * 0.3,
              repeat: false,
            ),
            Text(
              success.title,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            Text(
              success.message,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwSections,
            ),
            ElevatedButton(
              onPressed: () {},
              child: Text(success.textBtn),
            ),
            const SizedBox(
              height: GSizes.xs,
            ),
          ],
        ),
      ),
    );
  }
}
