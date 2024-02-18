import 'package:flutter/material.dart';

import '../../../../core/constants/colors.dart';
import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';
import '../../../../core/helpers/helper_functions.dart';
import '../../../../core/widgets/text_field.dart';

class SignUpForm extends StatefulWidget {
  const SignUpForm({super.key});

  @override
  State<SignUpForm> createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    bool dark = GHelperFunctions.isDarkMode(context);
    return Form(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            GTextStrings.signUpTitle,
            style: Theme.of(context).textTheme.headlineMedium,
          ),
          const SizedBox(
            height: GSizes.spaceBtwSections,
          ),
          const Row(
            children: [
              Expanded(
                child: GTextField(
                  label: GTextStrings.firstName,
                  prefixIcon: Icon(Icons.person_outline_rounded),
                ),
              ),
              SizedBox(
                width: GSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: GTextField(
                  label: GTextStrings.lastName,
                  prefixIcon: Icon(Icons.person_outline_rounded),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: GSizes.spaceBtwInputFields,
          ),
          const GTextField(
              label: GTextStrings.username, prefixIcon: Icon(Icons.person_add_outlined)),
          const SizedBox(
            height: GSizes.spaceBtwInputFields,
          ),
          const GTextField(label: GTextStrings.email, prefixIcon: Icon(Icons.email_outlined)),
          const SizedBox(
            height: GSizes.spaceBtwInputFields,
          ),
          const GTextField(label: GTextStrings.phone, prefixIcon: Icon(Icons.phone_outlined)),
          const SizedBox(
            height: GSizes.spaceBtwInputFields,
          ),
          GTextField(
            label: GTextStrings.password,
            prefixIcon: const Icon(
              Icons.lock_outline_rounded,
            ),
            obscureText: !isVisible,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isVisible = !isVisible;
                });
              },
              child: Icon(
                isVisible ? Icons.visibility_rounded : Icons.visibility_off_rounded,
              ),
            ),
          ),
          const SizedBox(
            height: GSizes.spaceBtwInputFields,
          ),
          Row(
            children: [
              SizedBox(width: 25, height: 25, child: Checkbox(value: true, onChanged: (value) {})),
              const SizedBox(
                width: GSizes.spaceBtwItems,
              ),
              Expanded(
                child: Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: '${GTextStrings.isAgreeTo} ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: GTextStrings.privacyPolicy,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? GColors.white : GColors.primary,
                            color: dark ? GColors.white : GColors.primary,
                          ),
                    ),
                    TextSpan(
                      text: ' and ',
                      style: Theme.of(context).textTheme.bodySmall,
                    ),
                    TextSpan(
                      text: GTextStrings.termsOfUse,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            decoration: TextDecoration.underline,
                            decorationColor: dark ? GColors.light : GColors.primary,
                            color: dark ? GColors.light : GColors.primary,
                          ),
                    )
                  ]),
                  maxLines: 2,
                  overflow: TextOverflow.fade,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: GSizes.spaceBtwSections,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/emailVerification');
              },
              child: const Text(GTextStrings.createAccount),
            ),
          ),
        ],
      ),
    );
  }
}
