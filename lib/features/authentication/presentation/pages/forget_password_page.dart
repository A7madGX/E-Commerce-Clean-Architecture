import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/responses/success/success.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/success_screen.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/text_field.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/image_strings.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/styles/spacing_styles.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({super.key});

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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              GTextStrings.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            Text(
              GTextStrings.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: GSizes.spaceBtwSections * 2,
            ),
            const GTextField(
              label: 'E-mail',
              prefixIcon: Icon(Iconsax.direct_right),
            ),
            const SizedBox(
              height: GSizes.spaceBtwSections,
            ),
            Row(
              children: [
                Expanded(
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => SuccessScreen(
                            success: SuccessMessage(
                              title: GTextStrings.changeYourPasswordTitle,
                              message: GTextStrings.changeYourPasswordSubTitle,
                              successImageUrl: GImageString.emailVerifiedImage,
                              labelButton: GTextStrings.continueBtn,
                              secondaryLabelButton: GTextStrings.resendEmailBtn,
                              onContinue: () {},
                            ),
                          ),
                        ),
                      );
                    },
                    child: const Text(GTextStrings.submitBtn),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
