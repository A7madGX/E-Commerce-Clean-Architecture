import 'package:flutter/material.dart';

import '../../../../../core/clippers/custom_clippers.dart';

class GClippedContainer extends StatelessWidget {
  final Widget child;
  const GClippedContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GClippers.parabolicEdgePath,
      child: child,
    );
  }
}
