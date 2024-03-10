import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/icon_container.dart';
import 'package:flutter_mapp_clean_architecture/core/widgets/ratingbar.dart';
import 'package:readmore/readmore.dart';

import '../../../../../core/constants/sizes.dart';

class UserReviewCard extends StatefulWidget {
  const UserReviewCard({super.key});

  @override
  State<UserReviewCard> createState() => _UserReviewCardState();
}

class _UserReviewCardState extends State<UserReviewCard> with AutomaticKeepAliveClientMixin {
  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Column(
      children: [
        Row(
          children: [
            GCircularImageContainer(
              imageUrl: GHelperFunctions.getUniqueAvatarUrl(),
              isNetworkImage: true,
              radius: GSizes.iconMd,
              padding: 0,
            ),
            const SizedBox(width: GSizes.spaceBtwItems),
            Text('Mohamed Ehab', style: Theme.of(context).textTheme.titleLarge),
            const Spacer(),
            IconButton(onPressed: () {}, icon: const Icon(Icons.more_vert_rounded)),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems),
        Row(
          children: [
            const GRatingBar(value: 3.5),
            const SizedBox(width: GSizes.spaceBtwItems),
            Text(
              '06 April, 2024',
              style: Theme.of(context).textTheme.bodyMedium,
            ),
          ],
        ),
        const SizedBox(height: GSizes.spaceBtwItems),
        const ReadMoreText(
          'This product is quite impressive and exceeded my expectations. I was able to find my favourite variation which is a green nike shoe and size 42. Hope you all have a great day',
          trimMode: TrimMode.Line,
          trimLines: 3,
          trimExpandedText: ' show less',
          trimCollapsedText: ' show more',
          moreStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: GColors.primary,
          ),
          lessStyle: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: GColors.primary,
          ),
        ),
        const SizedBox(height: GSizes.spaceBtwItems),
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(GSizes.cardRadiusLg),
            color: dark ? GColors.darkerGrey : GColors.grey,
          ),
          padding: const EdgeInsets.all(GSizes.md),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text('GStore', style: Theme.of(context).textTheme.titleMedium),
                  const Text('01 Jan, 2023')
                ],
              ),
              const SizedBox(height: GSizes.spaceBtwItems),
              const ReadMoreText(
                'This product is quite impressive and exceeded my expectations. I was able to find my favourite variation which is a green nike shoe and size 42. Hope you all have a great day',
                trimMode: TrimMode.Line,
                trimLines: 2,
                trimExpandedText: ' show less',
                trimCollapsedText: ' show more',
                moreStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: GColors.primary,
                ),
                lessStyle: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  color: GColors.primary,
                ),
              )
            ],
          ),
        )
      ],
    );
  }

  @override
  bool get wantKeepAlive => true;
}
