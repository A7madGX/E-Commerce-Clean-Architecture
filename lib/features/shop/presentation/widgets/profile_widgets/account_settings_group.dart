import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/animations.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/profile_widgets/menu_tile.dart';
import 'package:flutter_mapp_clean_architecture/features/shop/presentation/widgets/profile_widgets/sliver_appbar_delegate.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../core/constants/sizes.dart';
import '../../../../../core/constants/texts.dart';
import '../../../../../core/device/device_utli.dart';
import '../../../../../core/widgets/header.dart';

class AccountSettingsGroup extends StatelessWidget {
  const AccountSettingsGroup({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverMainAxisGroup(slivers: [
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
            child: const GHeaderTitle(header: GTextStrings.accountSettings),
          ),
        ),
      ),
      SliverPadding(
        padding: const EdgeInsets.only(
          right: GSizes.defaultSpace,
          left: GSizes.defaultSpace,
        ),
        sliver: SliverList.list(
          children: AnimateList(
            interval: 100.ms,
            effects: GAnimations.listAnimation,
            children: [
              GMenuTile(
                title: 'My Address',
                subtitle: 'Text shopping delivery address',
                icon: Iconsax.safe_home,
                onTap: () {},
              ),
              GMenuTile(
                title: 'My Cart',
                subtitle: 'Add, remove products and move to checkout',
                icon: Iconsax.shopping_cart,
                onTap: () {},
              ),
              GMenuTile(
                title: 'My Orders',
                subtitle: 'In-progress and Completed Orders',
                icon: Iconsax.bag_tick,
                onTap: () {},
              ),
              GMenuTile(
                title: 'Bank Account',
                subtitle: 'Withdraw balance to registered bank account',
                icon: Iconsax.bank,
                onTap: () {},
              ),
              GMenuTile(
                title: 'My Coupons',
                subtitle: 'List of all discounted coupens',
                icon: Iconsax.discount_shape,
                onTap: () {},
              ),
              GMenuTile(
                title: 'Notifications',
                subtitle: 'Set any kind of notification message',
                icon: Iconsax.notification,
                onTap: () {},
              ),
              GMenuTile(
                title: 'Account Privacy',
                subtitle: 'Manage data usage and connected accounts',
                icon: Iconsax.security_card,
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    ]);
  }
}
