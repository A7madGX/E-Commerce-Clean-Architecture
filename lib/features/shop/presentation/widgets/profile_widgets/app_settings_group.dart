import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/profile_widgets/menu_tile.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/profile_widgets/sliver_appbar_delegate.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/colors.dart';
import '../../../../../core/constants/sizes.dart';
import '../../../../../core/device/device_utli.dart';
import '../../../../../core/widgets/header.dart';

class AppSettingsGroup extends StatelessWidget {
  const AppSettingsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.only(
            right: GSizes.defaultSpace,
            left: GSizes.defaultSpace,
          ),
          sliver: SliverPersistentHeader(
            pinned: true,
            delegate: GSliverAppBarDelegate(
              minHeight: GDeviceUtils.getAppBarHeight(),
              maxHeight: GDeviceUtils.getAppBarHeight(),
              child: const GHeaderTitle(header: 'App Settings'),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            right: GSizes.defaultSpace,
            left: GSizes.defaultSpace,
            bottom: GSizes.defaultSpace,
          ),
          sliver: SliverList.list(
            children: AnimateList(
              interval: 100.ms,
              effects: GAnimations.listAnimation,
              children: [
                GMenuTile(
                  title: 'Load Data',
                  subtitle: 'Upload Data to your Cloud Firebase',
                  icon: Iconsax.document_upload,
                  onTap: () {},
                ),
                GMenuTile(
                  title: 'Geolocation',
                  subtitle: 'Set recommendation based on your location',
                  icon: Iconsax.location,
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                GMenuTile(
                  title: 'Safe Mode',
                  subtitle: 'Search result is safe for all ages',
                  icon: Iconsax.security_user,
                  trailing: Switch(value: true, onChanged: (value) {}),
                ),
                GMenuTile(
                  title: 'HD Image Quality',
                  subtitle: 'Set image quality to be seen',
                  icon: Iconsax.image,
                  trailing: Switch(value: false, onChanged: (value) {}),
                ),
              ],
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.only(
            bottom: GSizes.defaultSpace,
            right: GSizes.defaultSpace,
            left: GSizes.defaultSpace,
          ),
          sliver: SliverToBoxAdapter(
            child: OutlinedButton(
              onPressed: () {},
              style: OutlinedButton.styleFrom(side: const BorderSide(color: GColors.error)),
              child: Text(
                'Logout',
                style: const TextStyle().copyWith(color: GColors.error),
              ),
            ),
          ),
        )
      ],
    );
  }
}
