import 'package:flutter/material.dart';

class GImageContainer extends StatelessWidget {
  final double? width, height;
  final String imageUrl;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final BoxFit fit;
  final EdgeInsetsGeometry? padding;
  final BoxBorder? boxBorder;
  final double borderRadius;
  final Color? imageColor;
  const GImageContainer({
    super.key,
    this.width,
    this.height,
    required this.imageUrl,
    this.backgroundColor = Colors.transparent,
    this.isNetworkImage = false,
    this.fit = BoxFit.contain,
    this.padding,
    this.boxBorder,
    this.borderRadius = 16,
    this.imageColor,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      clipBehavior: Clip.hardEdge,
      borderRadius: BorderRadius.circular(borderRadius),
      child: AnimatedContainer(
        width: width,
        height: height,
        clipBehavior: Clip.hardEdge,
        duration: const Duration(milliseconds: 500),
        padding: padding,
        decoration: BoxDecoration(
          color: backgroundColor,
          border: boxBorder,
        ),
        child: isNetworkImage
            ? Image.network(
                imageUrl,
                fit: fit,
                color: imageColor,
              )
            : Image.asset(
                imageUrl,
                fit: fit,
                color: imageColor,
              ),
      ),
    );
  }
}
