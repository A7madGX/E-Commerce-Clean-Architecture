import 'package:flutter/material.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/helpers/helper_functions.dart';
import '../../pages/subcategory_page.dart';

class CategoryWithLabel extends StatelessWidget {
  const CategoryWithLabel({
    super.key,
    required this.category,
  });
  final MapEntry<String, List<String>> category;

  @override
  Widget build(BuildContext context) {
    final bool dark = GHelperFunctions.isDarkMode(context);

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(builder: (context) => const SubCategoryPage()));
      },
      child: Column(
        children: [
          Container(
            width: GSizes.circularIcon,
            height: GSizes.circularIcon,
            padding: const EdgeInsets.all(GSizes.smd),
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: dark ? GColors.dark : GColors.light,
            ),
            child: Image.asset(
              category.value.first,
              fit: BoxFit.cover,
              color: dark ? GColors.light : GColors.dark,
            ),
          ),
          const SizedBox(
            height: GSizes.spaceBtwItems / 2,
          ),
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: GSizes.circularIcon),
            child: Text(
              category.value.last,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.labelMedium!.apply(color: GColors.white),
            ),
          ),
        ],
      ),
    );
  }
}
