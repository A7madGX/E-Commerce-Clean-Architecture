import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/spacing_styles.dart';

import '../widgets/divider.dart';
import '../widgets/footer.dart';
import '../widgets/form.dart';
import '../widgets/header.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyles.paddingWithAppBarHeight,
          child: const Column(
            children: [
              Header(),
              SignInForm(),
              SignInDivider(),
              SignInFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
