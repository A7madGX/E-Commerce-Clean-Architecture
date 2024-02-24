import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/text_field.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/sizes.dart';
import '../../../../core/constants/texts.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    super.key,
  });

  @override
  State<SignInForm> createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  bool isVisible = false;
  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: GSizes.spaceBtwSections),
        child: Column(
          children: [
            const GTextField(
              label: GTextStrings.email,
              prefixIcon: Icon(Iconsax.direct_right),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputFields,
            ),
            GTextField(
              label: GTextStrings.password,
              prefixIcon: const Icon(
                Iconsax.password_check,
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
              height: GSizes.sm / 2,
            ),
            Row(
              children: [
                Expanded(
                  child: Row(
                    children: [
                      const Checkbox(
                        value: true,
                        onChanged: null,
                      ),
                      Text(
                        GTextStrings.rememberMe,
                        style: Theme.of(context).textTheme.bodyMedium,
                      )
                    ],
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pushNamed(context, '/forgetPassword');
                  },
                  child: const Text(GTextStrings.forgetPassword),
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
                  Navigator.pushNamed(context, '/skeleton');
                },
                child: const Text(GTextStrings.signIn),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {
                  Navigator.pushNamed(context, '/signUp');
                },
                child: const Text(GTextStrings.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
