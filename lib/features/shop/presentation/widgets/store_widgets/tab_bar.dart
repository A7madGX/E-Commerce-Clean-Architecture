import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/device/device_utli.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';

class GTabBar extends StatelessWidget implements PreferredSizeWidget {
  final List<Widget> tabs;
  const GTabBar({super.key, required this.tabs});

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return Material(
      color: dark ? GColors.dark : GColors.light,
      child: TabBar(
        indicatorColor: GColors.primary,
        labelPadding: const EdgeInsets.all(GSizes.spaceBtwItems / 1.5),
        labelColor: dark ? GColors.white : GColors.black,
        unselectedLabelColor: GColors.darkGrey,
        tabs: tabs,
        isScrollable: true,
        tabAlignment: TabAlignment.start,
        splashBorderRadius: BorderRadius.circular(GSizes.smd),
      ),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(GDeviceUtils.getAppBarHeight());
}
