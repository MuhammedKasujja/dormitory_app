import 'package:flutter/material.dart';

class CardClipper extends CustomPainter {
  @override
  void paint(Canvas canvas, Size size) {
    // Layer 1

    Paint paint_fill_0 = Paint()
      ..color = Colors.white
      ..style = PaintingStyle.fill
      ..strokeWidth = size.width * 0.00
      ..strokeCap = StrokeCap.butt
      ..strokeJoin = StrokeJoin.miter;

    Path path_0 = Path();
    path_0.moveTo(size.width * -0.0007182, size.height * -0.0015000);
    path_0.lineTo(size.width * 0.3097091, size.height * -0.0008667);
    path_0.quadraticBezierTo(size.width * 0.3098636, size.height * 0.0282000,
        size.width * 0.3181727, size.height * 0.0413333);
    path_0.quadraticBezierTo(size.width * 0.3269364, size.height * 0.0313667,
        size.width * 0.3277545, size.height * -0.0013000);
    path_0.lineTo(size.width * 1.0010636, size.height * -0.0003667);
    path_0.lineTo(size.width * 0.9997545, size.height * 0.4404000);
    path_0.quadraticBezierTo(size.width * 0.9835000, size.height * 0.4604333,
        size.width * 0.9828909, size.height * 0.5040000);
    path_0.quadraticBezierTo(size.width * 0.9821000, size.height * 0.5606333,
        size.width * 0.9998455, size.height * 0.5648667);
    path_0.lineTo(size.width * 1.0009000, size.height * 1.0015333);
    path_0.lineTo(size.width * 0.3274364, size.height * 0.9993667);
    path_0.quadraticBezierTo(size.width * 0.3280182, size.height * 0.9810000,
        size.width * 0.3183182, size.height * 0.9634000);
    path_0.quadraticBezierTo(size.width * 0.3082273, size.height * 0.9764667,
        size.width * 0.3084545, size.height * 0.9996000);
    path_0.lineTo(size.width * -0.0002000, size.height * 1.0024000);
    path_0.lineTo(size.width * 0.0001636, size.height * 0.5627000);
    path_0.quadraticBezierTo(size.width * 0.0145000, size.height * 0.5611667,
        size.width * 0.0167818, size.height * 0.5014667);
    path_0.quadraticBezierTo(size.width * 0.0151364, size.height * 0.4428667,
        size.width * -0.0001364, size.height * 0.4344667);
    path_0.lineTo(size.width * -0.0007182, size.height * -0.0015000);
    path_0.close();

    canvas.drawPath(path_0, paint_fill_0);

    // Layer 1

    Paint paint_stroke_0 = Paint()
      ..color = const Color.fromARGB(255, 241, 193, 17)
      ..style = PaintingStyle.stroke
      ..strokeWidth = size.width * 0.0018
      ..strokeCap = StrokeCap.round
      ..strokeJoin = StrokeJoin.round;

    canvas.drawPath(path_0, paint_stroke_0);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return true;
  }
}
