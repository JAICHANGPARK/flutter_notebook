import 'dart:io';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_notebook/meme_chat_app/platform_adaptive.dart';

class ImageEditPage extends MaterialPageRoute<String> {
  ImageEditPage(File imageFile)
      : super(
            fullscreenDialog: true,
            builder: (BuildContext context) {
              return new ImageEditDialog(imageFile: imageFile);
            });
}

class ImageEditDialog extends StatefulWidget {
  final imageFile;

  ImageEditDialog({this.imageFile});

  @override
  _ImageEditDialogState createState() => _ImageEditDialogState();
}

class _ImageEditDialogState extends State<ImageEditDialog> {
  String _text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new PlatformAdaptiveAppbar(
        title: Text("Wow?"),
        platform: Theme.of(context).platform,
        actions: <Widget>[
          FlatButton(
            child: Text(
              "SEND",
              style: TextStyle(
                  color: defaultTargetPlatform == TargetPlatform.iOS
                      ? Colors.black
                      : Colors.white),
            ),
            onPressed: () => Navigator.pop(context, _text),
          )
        ],
      ),
      body: Column(
        children: <Widget>[
          Flexible(
            child: SingleChildScrollView(
              child: new Stack(
                children: <Widget>[
                  new Image.file(
                    widget.imageFile,
                    width: 250,
                  ),
                  new Positioned.fill(
                      child: new Container(
                    alignment: FractionalOffset.topCenter,
                    child: Text(
                      _text,
                      style: TextStyle(
                        fontFamily: 'Anton',
                        fontSize: 37.5,
                        color: Colors.white,
                      ),
                      softWrap: true,
                      textAlign: TextAlign.center,
                    ),
                  ))
                ],
                alignment: FractionalOffset.topCenter,
              ),
            ),
          ),
          new Container(
            margin: new EdgeInsets.symmetric(horizontal: 16.0),
            child: new TextField(
              decoration: InputDecoration(
                hintText: "Input Your Mood",
              ),
              onChanged: (String text){
                setState(() {
                  _text = text;
                });
              },
            ),
          )
        ],
      ),
    );
  }
}
