import 'package:flutter/material.dart';

class TapperPainter extends CustomPainter {
  BuildContext context;
  double xcord;
  double ycord;
  TapperPainter({this.context, this.xcord, this.ycord});

  @override
  void paint(Canvas canvas, Size size) {
    //full line
    final p1a = Offset(10, 35);
    final p2a = Offset(MediaQuery.of(context).size.width / 1.05, 35);
    final paint1 = Paint()
      ..color = Color.fromRGBO(222, 243, 240, 1.0)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    canvas.drawLine(p1a, p2a, paint1);

    // colored line
    final p1 = Offset(10, 35);
    final p2 = Offset(xcord, 35);
    final paint = Paint()
      ..color = Color.fromRGBO(115, 207, 194, 1.0)
      ..strokeCap = StrokeCap.round
      ..strokeWidth = 10;
    canvas.drawLine(p1, p2, paint);

    //vertical line
    // final p3 = Offset(280, 80);
    // final p4 = Offset(280, 120);
    // final paint2 = Paint()
    //   ..color = Color.fromRGBO(115, 207, 194, 1.0)
    //   ..strokeCap = StrokeCap.round
    //   ..strokeWidth = 2;
    // canvas.drawLine(p3, p4, paint2);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) => false;
}
