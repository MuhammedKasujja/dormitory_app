import 'package:flutter/material.dart';

class VerticalClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    Paint paint_fill_0 = Paint()
      ..color = const Color.fromARGB(255, 255, 255, 255)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * 1.0025000, size.height * -0.0020000);
    path_0.lineTo(size.width * 1.0025000, size.height * 0.9996800);
    path_0.lineTo(size.width * 0.9650375, size.height * 1.0017600);
    path_0.lineTo(size.width * 0.9661000, size.height * 0.6008400);
    path_0.quadraticBezierTo(size.width * 0.8577750, size.height * 0.6059000,
        size.width * 0.8401375, size.height * 0.5041800);
    path_0.quadraticBezierTo(size.width * 0.8530000, size.height * 0.4030200,
        size.width * 0.9655125, size.height * 0.4024600);
    path_0.lineTo(size.width * 0.9661250, size.height * 0.0010400);
    path_0.lineTo(size.width * 1.0025000, size.height * -0.0020000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
