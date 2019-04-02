import 'dart:math';
import 'dart:ui';

import 'timeline_entry.dart';

Color interpolateColor(Color from, Color to, double elapsed) {
  double r, g, b, a;
  double speed = min(1.0, elapsed * 5.0);
  double c = to.alpha.toDouble() - from.alpha.toDouble();
  if (c.abs() < 1.0) {
    a = to.alpha.toDouble();
  } else {
    a = from.alpha + c * speed;
  }

  c = to.red.toDouble() - from.red.toDouble();
  if (c.abs() < 1.0) {
    r = to.red.toDouble();
  } else {
    r = from.red + c * speed;
  }

  // (0x0000ff00 & value) >> 8;
  c = to.green.toDouble() - from.green.toDouble();
  if (c.abs() < 1.0) {
    g = to.green.toDouble();
  } else {
    g = from.green + c * speed;
  }

  c = to.blue.toDouble() - from.blue.toDouble();
  if (c.abs() < 1.0) {
    b = to.blue.toDouble();
  } else {
    b = from.blue + c * speed;
  }
  return Color.fromARGB(a.round(), r.round(), g.round(), b.round());
}




















