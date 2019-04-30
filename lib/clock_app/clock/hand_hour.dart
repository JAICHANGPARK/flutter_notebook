import 'dart:math';
import 'package:flutter/material.dart';

class HourHandPainter extends CustomPainter{
  final Paint HourHandPaint;
  int minutes;
  int hours;


  HourHandPainter({this.minutes, this.hours}):
        HourHandPaint = new Paint(){
    HourHandPaint.color = const Color(0xff222d62);
    HourHandPaint.style = PaintingStyle.stroke;
    HourHandPaint.strokeCap = StrokeCap.round;
    HourHandPaint.strokeWidth = 6.0;
  }

  @override
  void paint(Canvas canvas, Size size) {
    // TODO: implement paint
    final radius = size.width / 2;
    canvas.save();
    canvas.translate(radius, radius);

    canvas.rotate(
        this.hours >= 12 ?
        2 * pi * ((this.hours - 12) / 12 + (this.minutes / 720)):
        2 * pi * ((this.hours / 12) / 12 + (this.minutes / 720))
    );

    Path path = new Path();
    path.moveTo(0.0, -radius * 0.5);
    path.lineTo(0.0,  radius * 0.1);
    path.close();
    canvas.drawPath(path, HourHandPaint);
    canvas.restore();
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    // TODO: implement shouldRepaint
    return true;
  }

}