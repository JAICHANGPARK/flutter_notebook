


import 'package:flutter/material.dart';

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
