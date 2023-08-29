import 'package:flutter/material.dart';

class HorizontalClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Color.fromARGB(255, 204, 26, 26)
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0004182, size.height * 0.0001333);
    path_0.lineTo(size.width * 0.2817818, size.height * -0.0007833);
    path_0.quadraticBezierTo(size.width * 0.2826909, size.height * 0.0313167,
        size.width * 0.3027091, size.height * 0.0318000);
    path_0.quadraticBezierTo(size.width * 0.3255636, size.height * 0.0301333,
        size.width * 0.3286000, size.height * 0.0022333);
    path_0.lineTo(size.width * 0.9993636, size.height * -0.0016667);
    path_0.lineTo(size.width * 0.9994364, size.height * 0.0318000);
    path_0.lineTo(size.width * 0.0001818, size.height * 0.0350333);
    path_0.lineTo(size.width * -0.0004182, size.height * 0.0001333);
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
