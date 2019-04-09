import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';

class DrawCirclePage extends StatefulWidget {
  @override
  _DrawCirclePageState createState() => _DrawCirclePageState();
}

class _DrawCirclePageState extends State<DrawCirclePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: <Widget>[
          IconButton(
            onPressed: (){
              
            },
            icon: Icon(Icons.near_me),
          )
        ],
        title: Text("Draw Circle "),
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
    paint..style = PaintingStyle.fill;
    paint..color = Color.fromARGB(150, 0, 200, 255);

    canvas.drawCircle(Offset(dx + 150.0, dy + 150.0), 100, paint);

    paint..style = PaintingStyle.stroke;
    paint.color = Colors.orange;
    paint..strokeWidth = 10.0;
    Rect rect = Rect.fromLTWH(dx + 100.0, dy + 200.0, 200, 200);
    canvas.drawOval(rect, paint);
    rect = Rect.fromLTWH(dx + 120.0, dy + 220.0, 150, 150);
    canvas.drawOval(rect, paint);

    paint.color = Colors.red;
    rect = Rect.fromLTWH(dx + 100.0, dy + 100.0, 200, 150);
    canvas.drawOval(rect, paint);

  }
}
