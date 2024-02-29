import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/image_strings.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../../../../core/widgets/image_container.dart';

class SliderBottomSection extends StatefulWidget {
  const SliderBottomSection({
    super.key,
  });

  @override
  State<SliderBottomSection> createState() => _SliderBottomSectionState();
}

class _SliderBottomSectionState extends State<SliderBottomSection> {
  late final CarouselController carouselController;
  late final PageController pageController;

  @override
  void initState() {
    super.initState();
    carouselController = CarouselController();
    pageController = PageController();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: 1,
          height: 1,
          child: PageView(
            controller: pageController,
            children: [for (var i = 0; i < 8; i++) const SizedBox.shrink()],
          ),
        ),
        CarouselSlider(
          carouselController: carouselController,
          items: const [
            GImageContainer(
                imageUrl: GImageString.banner1,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner2,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner3,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner4,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner5,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner6,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner7,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
            GImageContainer(
                imageUrl: GImageString.banner8,
                backgroundColor: Colors.transparent,
                fit: BoxFit.cover),
          ],
          options: CarouselOptions(
            onPageChanged: (int index, _) {
              pageController.animateToPage(index,
                  duration: const Duration(milliseconds: 200), curve: Curves.linear);
            },
            viewportFraction: 1,
            autoPlay: true,
            enlargeCenterPage: true,
            aspectRatio: 1.77,
          ),
        ),
        const SizedBox(
          height: GSizes.spaceBtwItems,
        ),
        SmoothPageIndicator(
          controller: pageController,
          effect: WormEffect(
            activeDotColor: GHelperFunctions.isDarkMode(context) ? GColors.light : GColors.dark,
            dotHeight: 4,
          ),
          count: 8,
        ),
      ],
    );
  }
}
