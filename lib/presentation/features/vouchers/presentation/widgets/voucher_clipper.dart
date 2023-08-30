import 'package:flutter/material.dart';

class VoucherClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.moveTo(0.0, size.height * 0.20);
    path.lineTo(0.0, size.height * 0.60);
    path.quadraticBezierTo(0, size.height * 0.80, 15, size.height * 0.80);
    path.lineTo(size.width - 20, size.height * 0.80);
    path.quadraticBezierTo(
        size.width - 10, size.height - 10, size.width, size.height);
    path.quadraticBezierTo(
        size.width - 10, size.height * 0.90, size.width - 10, 15.0);
    path.quadraticBezierTo(size.width - 12, 0.0, size.width - 30, 0.0);
    path.lineTo(15.0, 0.0);
    path.quadraticBezierTo(0.0, 0.0, 0.0, size.height * 0.20);
    // path.lineTo(0.0, (size.height / 2) - 30);
    // final angleRight01ControlPoint = Offset(20, 10);
    // final angleRight02ControlPoint = Offset(20, 10);
    // path.quadraticBezierTo(
    //     angleRight01ControlPoint.dx,
    //     angleRight01ControlPoint.dy,
    //     angleRight02ControlPoint.dx,
    //     angleRight02ControlPoint.dy);
    // path.lineTo(0.0, (size.height / 2) - 30);
    // // var secondControlPoint = Offset(size.width - (35), size.height - 95);
    // // var secondEndPoint = Offset(size.width, size.height / 2.4);
    // // path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
    // //     secondEndPoint.dx, secondEndPoint.dy);
    // // path.lineTo(size.width, size.height - 40);
    // path.lineTo(size.width, size.height);
    // path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return true;
  }
}
