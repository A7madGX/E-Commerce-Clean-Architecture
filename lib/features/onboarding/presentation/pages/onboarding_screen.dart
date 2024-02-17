import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/providers/onboarding_provider.dart';
import 'package:flutter_mapp_clean_architecture/features/onboarding/presentation/widgets/onboarding_page.dart';
import 'package:provider/provider.dart';

import '../widgets/onboarding_next_button.dart';
import '../widgets/onboarding_page_indicator.dart';
import '../widgets/onboarding_skip_button.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Consumer<OnBoardingProvider>(builder: (context, ctrl, _) {
        return Stack(
          children: [
            PageView(
              controller: ctrl.pageCtrl,
              onPageChanged: context.read<OnBoardingProvider>().updatePageIndex,
              children: const [
                OnBoardingPage(
                  url: GImageString.onboardingImage1,
                  title: GImageString.onboardingTitle1,
                  subtitle: GImageString.onboardingSubTitle1,
                ),
                OnBoardingPage(
                  url: GImageString.onboardingImage2,
                  title: GImageString.onboardingTitle2,
                  subtitle: GImageString.onboardingSubTitle2,
                ),
                OnBoardingPage(
                  url: GImageString.onboardingImage3,
                  title: GImageString.onboardingTitle3,
                  subtitle: GImageString.onboardingSubTitle3,
                ),
              ],
            ),
            const OnBoardingSkipButton(),
            OnBoardingPageIndicator(pageCtrl: ctrl.pageCtrl),
            const OnBoardingNextButton()
          ],
        );
      }),
    );
  }
}
