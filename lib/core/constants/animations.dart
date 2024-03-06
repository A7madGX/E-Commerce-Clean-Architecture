import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:flutter_mapp_clean_architecture/core/constants/colors.dart';

class GAnimations {
  GAnimations._();

  static List<Effect<dynamic>> pageAnimation = [FadeEffect(duration: 500.ms)];
  static List<Effect<dynamic>> logoAnimation = [
    SlideEffect(duration: 500.ms),
    FadeEffect(duration: 500.ms),
    ShimmerEffect(delay: 1.seconds, duration: 1.seconds, color: GColors.white.withOpacity(0.5)),
  ];
  static List<Effect<dynamic>> titleAnimation = [FadeEffect(duration: 500.ms)];
  static List<Effect<dynamic>> shimmerAnimation = [
    ShimmerEffect(
      color: GColors.primary,
      duration: 5.seconds,
    )
  ];
  static List<Effect<dynamic>> gridAnimation = [ScaleEffect(duration: 200.ms)];
  static List<Effect<dynamic>> listAnimation = [
    SlideEffect(duration: 200.ms, begin: const Offset(1.2, 0), end: const Offset(0, 0))
  ];
  static List<Effect<dynamic>> categoryListAnimation = [
    SlideEffect(duration: 100.ms, begin: const Offset(7, 0), end: const Offset(0, 0))
  ];
}
