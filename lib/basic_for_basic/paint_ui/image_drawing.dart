import 'package:flutter/material.dart';

import 'dart:ui' as ui;
import 'package:flutter/services.dart';
import 'package:flutter/rendering.dart';
import 'dart:typed_data';
import 'dart:async';

class ImageDrawingPage extends StatefulWidget {
  @override
  _ImageDrawingPageState createState() => _ImageDrawingPageState();
}

class _ImageDrawingPageState extends State<ImageDrawingPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image"),
        centerTitle: true,
      ),
      body: Center(
        child: CustomRenderBoxWidget(),
      ),
    );
  }
}

class CustomRenderBoxWidget extends SingleChildRenderObjectWidget {
  @override
  RenderObject createRenderObject(BuildContext context) {
    // TODO: implement createRenderObject
    return _RenderBox();
  }
}

class _RenderBox extends RenderBox {
  ui.Image _image;

  @override
  bool hitTest(HitTestResult result, {Offset position}) {
    // TODO: implement hitTest
    return true;
  }

  _RenderBox() {
    loadAssetImage('picsix.jpeg');
  }

  //TODO : load -> uint8List -> instantiateImageCodec -> getNextFrame
  loadAssetImage(String fileName) =>
      rootBundle.load("assets/img/$fileName").then((bd) {
        Uint8List uint8list = Uint8List.view(bd.buffer);
        ui.instantiateImageCodec(uint8list).then((codec) {
          codec.getNextFrame().then((frameInfo) {
            _image = frameInfo.image;
            markNeedsPaint();
          });
        });
      });

  @override
  void paint(PaintingContext context, Offset offset) {
    // TODO: implement paint
    super.paint(context, offset);
    Canvas canvas = context.canvas;
    int dx = offset.dx.toInt();
    int dy = offset.dy.toInt();

    Paint paint = Paint();
    Offset off = Offset(dx.toDouble(), dy.toDouble());
    Rect rect = Rect.fromLTWH(dx + 50.0, dy + 50.0, 300, 200);
    if (_image != null) {
      Rect rect0 = Rect.fromLTWH(
          0, 0, _image.width.toDouble(), _image.height.toDouble());
//      canvas.drawImage(_image, off, paint);\
      canvas.drawImageRect(_image, rect0, rect, paint);
    }
  }
}









