import 'package:flutter/material.dart';

import '../../../../core/clippers/custom_clippers.dart';
import '../../../../core/constants/colors.dart';

class GPrimaryHeaderContainer extends StatelessWidget {
  final Widget child;
  const GPrimaryHeaderContainer({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: GClippers.parabolicEdgePath,
      child: Container(
        height: 400,
        width: double.infinity,
        decoration: const BoxDecoration(
          color: GColors.primary,
        ),
        child: Stack(
          clipBehavior: Clip.antiAlias,
          children: [
            Positioned(
              top: -150,
              right: -250,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: GColors.white.withOpacity(0.1),
              ),
            ),
            Positioned(
              top: 100,
              right: -300,
              child: CircleAvatar(
                radius: 200,
                backgroundColor: GColors.white.withOpacity(0.1),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
