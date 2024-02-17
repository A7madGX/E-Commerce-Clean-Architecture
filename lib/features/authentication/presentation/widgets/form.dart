import 'package:flutter/material.dart';

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
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(
                    Icons.email_outlined,
                  ),
                  labelText: GTextStrings.email),
            ),
            const SizedBox(
              height: GSizes.spaceBtwInputFields,
            ),
            TextFormField(
              obscureText: !isVisible,
              decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.lock_outline_rounded,
                ),
                labelText: GTextStrings.password,
                suffixIcon: GestureDetector(
                  onTap: () {
                    setState(() {
                      isVisible = !isVisible;
                    });
                  },
                  child: Icon(isVisible ? Icons.visibility_rounded : Icons.visibility_off_rounded),
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
                  onPressed: () {},
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
                onPressed: () {},
                child: const Text(GTextStrings.signIn),
              ),
            ),
            const SizedBox(
              height: GSizes.spaceBtwItems,
            ),
            SizedBox(
              width: double.infinity,
              child: OutlinedButton(
                onPressed: () {},
                child: const Text(GTextStrings.createAccount),
              ),
            )
          ],
        ),
      ),
    );
  }
}
