import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/responses/success/success.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/success_screen.dart';
import 'package:lottie/lottie.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/styles/spacing_styles.dart';

class EmailVerificationScreen extends StatelessWidget {
  const EmailVerificationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          IconButton(
            color: GColors.darkGrey,
            icon: const Icon(CupertinoIcons.clear),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
        ],
        automaticallyImplyLeading: false,
      ),
      body: Padding(
        padding: GSpacingStyles.defaultPadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Lottie.asset(
              GImageString.emailVerificationImage,
              height: GHelperFunctions.screenHeight(context) * 0.3,
              repeat: false,
            ),
            Text(
              GTextStrings.confirmEmail,
              style: Theme.of(context).textTheme.headlineSmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            Text(
              'rabiahmed2001@yahoo.com',
              style: Theme.of(context).textTheme.bodyMedium!.apply(
                    fontStyle: FontStyle.italic,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            Text(
              GTextStrings.confirmEmailSubtitle,
              style: Theme.of(context).textTheme.bodySmall,
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: GSizes.spaceBtwSections,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => SuccessScreen(
                      success: SuccessMessage(
                        title: GTextStrings.yourAccountCreatedTitle,
                        message: GTextStrings.yourAccountCreatedSubTitle,
                        successImageUrl: GImageString.emailVerifiedImage,
                        labelButton: GTextStrings.continueBtn,
                        onContinue: () {
                          Navigator.pop(context);
                          Navigator.pop(context);
                          Navigator.pop(context);
                        },
                      ),
                    ),
                  ),
                );
              },
              child: const Text(GTextStrings.continueBtn),
            ),
            const SizedBox(
              height: GSizes.xs,
            ),
            TextButton(
              onPressed: () {},
              child: const Text(GTextStrings.resendEmailBtn),
            ),
          ],
        ),
      ),
    );
  }
}
