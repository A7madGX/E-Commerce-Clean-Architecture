import 'package:flutter/material.dart';
import 'package:flutter_mapp_clean_architecture/core/clippers/curved%20edges/parabolic_edge.dart';

class GClippers {
  GClippers._();

  static CustomClipper<Path> parabolicEdgePath = GParabolicEdge();
}
