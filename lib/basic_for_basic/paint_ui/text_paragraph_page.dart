


import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui' as ui;


class TextParagraphPage extends StatefulWidget {
  @override
  _TextParagraphPageState createState() => _TextParagraphPageState();
}

class _TextParagraphPageState extends State<TextParagraphPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Text Paragraph"),
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

    ui.ParagraphBuilder builder = ui.ParagraphBuilder(
      ui.ParagraphStyle(textDirection: TextDirection.ltr),
    )
    ..pushStyle(ui.TextStyle(
      color: Colors.red, fontSize: 48.0
    ))
    ..addText("Hello Worold")
      ..pushStyle(ui.TextStyle(
          color: Colors.blue, fontSize: 30.0
      ))
    ..addText("This is a Sample Text Paragraph ");

    ui.Paragraph paragraph  = builder.build()
    ..layout(ui.ParagraphConstraints(width: 350.0));
    canvas.drawParagraph(paragraph, offset);

  }
}








