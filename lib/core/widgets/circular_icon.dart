import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';

class GCircularIcon extends StatelessWidget {
  final IconData icon;
  final Color? color;
  final Color? backgroundColor;
  final VoidCallback? onTap;
  final double? radius;
  const GCircularIcon({
    super.key,
    required this.icon,
    this.onTap,
    this.color,
    this.radius,
    this.backgroundColor,
  });

  @override
  Widget build(BuildContext context) {
    final dark = GHelperFunctions.isDarkMode(context);
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor ?? (dark ? GColors.dark : GColors.light),
      child: IconButton(
        onPressed: onTap,
        icon: Icon(
          icon,
          color: color,
        ),
      ),
    );
  }
}
