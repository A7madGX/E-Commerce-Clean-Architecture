import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/image_strings.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/texts.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/pages/edit_profile_page.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/app_bar.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/home_widgets/primary_header_container.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/sizes.dart';

class TopProfileSection extends StatelessWidget {
  const TopProfileSection({super.key});

  @override
  Widget build(BuildContext context) {
    return GPrimaryHeaderContainer(
        child: ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        GCustomAppBar(
          title: Text(
            GTextStrings.account,
            style: Theme.of(context).textTheme.headlineMedium!.apply(color: GColors.white),
          ),
          showBackArrow: false,
        ),
        ListTile(
          leading: const CircleAvatar(
            radius: GSizes.iconLg,
            backgroundImage: AssetImage(GImageString.me),
          ),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              GTextStrings.profileTitle,
              style: Theme.of(context).textTheme.headlineSmall!.apply(color: GColors.white),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              GTextStrings.profileEmail,
              style: Theme.of(context).textTheme.bodyMedium!.apply(color: GColors.white),
            ),
          ),
          trailing: IconButton(
              onPressed: () {
                Navigator.of(context)
                    .push(MaterialPageRoute(builder: (context) => const EditProfilePage()));
              },
              icon: const Icon(
                Iconsax.edit,
                color: GColors.white,
              )),
        ),
        const SizedBox(height: 30),
      ],
    ));
  }
}
