import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class DrawCustomDrawPage extends StatefulWidget {
  @override
  _DrawCirclePageState createState() => _DrawCirclePageState();
}

class _DrawCirclePageState extends State<DrawCustomDrawPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: () {

            },
            icon: Icon(Icons.near_me),
          )
        ],
        title: Text("Draw Custom Paint "),
        centerTitle: true,
      ),
      body: Center(
        child: MyRenderBoxWidget(),
      ),
    );
  }
}

class MyRenderBoxWidget extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return _MyRenderBox();
  }
}

class _MyRenderBox extends RenderBox {
  @override
  bool hitTest(HitTestResult result, {Offset position}) {
    // TODO: implement hitTest
    return true;
  }

  @override
  void paint(PaintingContext context, Offset offset) {
    // TODO: implement paint
    Canvas canvas = context.canvas;
    int dx = offset.dx.toInt();
    int dy = offset.dy.toInt();

    Paint paint = Paint();

    paint..style = PaintingStyle.stroke;
    paint.color = Colors.orange;
    paint..strokeWidth = 5.0;
    for (var i = 0; i <= 10; i++) {
      Rect rect = Rect.fromLTRB(
          dx + 50.0 + 30.0 * i,
          dy + 50.0,
          dx + 50.0,
          dy + 250.0 - 20 * i);
      canvas.drawLine(rect.topLeft, rect.bottomRight, paint);
    }

    for (var i = 0; i <= 10; i++) {
      Rect rect = Rect.fromLTRB(
          dx + 50.0 + 30.0 * i,
          dy + 50.0,
          dx + 50.0,
          dy + 250.0 - 20 * i);
      canvas.drawLine(rect.bottomLeft, rect.topRight, paint);
    }
  }
}















