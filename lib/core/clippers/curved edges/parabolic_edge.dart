import 'package:flutter/cupertino.dart';

class GParabolicEdge extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();

    path.lineTo(0, size.height);
    final controllingPoint = Offset(0, size.height - 20);
    final endPoint = Offset(30, size.height - 20);
    path.quadraticBezierTo(controllingPoint.dx, controllingPoint.dy, endPoint.dx, endPoint.dy);

    path.lineTo(size.width - 30, size.height - 20);

    final controllingPoint2 = Offset(size.width, size.height - 20);
    final endPoint2 = Offset(size.width, size.height);
    path.quadraticBezierTo(controllingPoint2.dx, controllingPoint2.dy, endPoint2.dx, endPoint2.dy);

    path.lineTo(size.width, 0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
