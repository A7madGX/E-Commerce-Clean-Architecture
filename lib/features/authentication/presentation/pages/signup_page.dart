import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/styles/spacing_styles.dart';
import 'package:flutter_mapp_clean_architecture/features/authentication/presentation/widgets/signup_form.dart';

import '../widgets/signup_footer.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: GSpacingStyles.defaultPadding,
          child: const Column(
            children: [
              SignUpForm(),
              SignUpFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
