import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/sizes.dart';
import 'package:flutter_mapp_clean_architecture/core/helpers/helper_functions.dart';

class GCircularImageContainer extends StatelessWidget {
  final double? radius;
  final double width;
  final double height;
  final Color? backgroundColor;
  final Color? overlayColor;
  final String imageUrl;
  final BoxFit fit;
  final double padding;
  final bool isNetworkImage;
  const GCircularImageContainer({
    super.key,
    this.width = 56,
    this.height = 56,
    this.backgroundColor,
    this.overlayColor,
    required this.imageUrl,
    this.fit = BoxFit.cover,
    this.padding = GSizes.md,
    this.isNetworkImage = false,
    this.radius,
  });

  @override
  Widget build(BuildContext context) {
    final diameter = (radius != null) ? radius! * 2 : null;
    return Container(
      clipBehavior: Clip.hardEdge,
      width: diameter ?? width,
      height: diameter ?? height,
      padding: EdgeInsets.all(padding),
      decoration: BoxDecoration(
        color: backgroundColor ??
            (GHelperFunctions.isDarkMode(context) ? GColors.black : GColors.white),
        shape: BoxShape.circle,
      ),
      child: isNetworkImage
          ? Image.network(
              imageUrl,
              fit: fit,
              color: overlayColor,
            )
          : Image.asset(
              imageUrl,
              fit: fit,
              color: overlayColor,
            ),
    );
  }
}
