import 'package:flutter/material.dart';

class GSliverAppBarDelegate extends SliverPersistentHeaderDelegate {
  GSliverAppBarDelegate({
    required this.minHeight,
    required this.maxHeight,
    required this.child,
  });

  final double minHeight;
  final double maxHeight;
  final Widget child;

  @override
  double get minExtent => minHeight;

  @override
  double get maxExtent => maxHeight;

  @override
  Widget build(BuildContext context, double shrinkOffset, bool overlapsContent) {
    double progress = shrinkOffset / (maxExtent * 2);
    return Material(
      color: Theme.of(context).scaffoldBackgroundColor,
      child: Align(
        alignment: Alignment(0, progress),
        child: child,
      ),
    );
  }

  @override
  bool shouldRebuild(GSliverAppBarDelegate oldDelegate) {
    return maxHeight != oldDelegate.maxHeight ||
        minHeight != oldDelegate.minHeight ||
        child != oldDelegate.child;
  }
}
