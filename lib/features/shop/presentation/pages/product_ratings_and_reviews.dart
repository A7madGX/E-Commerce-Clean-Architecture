import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';

import '../widgets/product_review_rating_widgets/overall_rating_section.dart';
import '../widgets/product_review_rating_widgets/user_review_card.dart';

class ProductRatingAndReview extends StatelessWidget {
  const ProductRatingAndReview({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const GCustomAppBar(
        title: Text('Reviews & Ratings'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(GSizes.defaultSpace),
        child: CustomScrollView(
          slivers: [
            // Text Section
            const SliverToBoxAdapter(
              child: Text(
                'Ratings and reviews are verified and are from people who use the same type of device as yours.',
              ),
            ),
            const SliverToBoxAdapter(child: SizedBox(height: GSizes.spaceBtwItems)),

            // OverAll Rating Section
            const SliverToBoxAdapter(child: OverAllProductRating()),
            const SliverToBoxAdapter(child: SizedBox(height: GSizes.spaceBtwSections)),

            // User Reviews List Section
            SliverList.list(
                children: AnimateList(
              delay: 200.ms,
              interval: 100.ms,
              effects: GAnimations.listAnimation,
              children: [
                for (var i = 0; i < 4; i++) ...[
                  const UserReviewCard(),
                  const Divider(height: GSizes.spaceBtwSections),
                ]
              ],
            )),
          ],
        ),
      ),
    );
  }
}
