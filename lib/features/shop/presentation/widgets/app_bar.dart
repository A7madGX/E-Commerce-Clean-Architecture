import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/device/device_utli.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../core/constants/sizes.dart';

class GCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? title;
  final bool showBackArrow;
  final IconData? leadingIcon;
  final List<Widget>? actions;
  final VoidCallback? leadingOnPressed;
  const GCustomAppBar({
    super.key,
    this.title,
    this.showBackArrow = true,
    this.leadingIcon,
    this.actions,
    this.leadingOnPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: GSizes.md),
      child: AppBar(
        automaticallyImplyLeading: false,
        title: title,
        actions: actions,
        leading: showBackArrow
            ? IconButton(
                icon: const Icon(
                  Iconsax.arrow_left,
                ),
                onPressed: leadingOnPressed,
              )
            : (leadingIcon != null)
                ? IconButton(
                    icon: Icon(leadingIcon),
                    onPressed: leadingOnPressed,
                  )
                : null,
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
