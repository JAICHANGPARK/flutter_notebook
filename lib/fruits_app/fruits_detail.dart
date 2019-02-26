

import 'package:flutter/material.dart';


class FruitsDetailPage extends StatefulWidget {
  final String imageTag;
  final String imagePath;

  FruitsDetailPage({@required this.imageTag, this.imagePath});

  @override
  _FruitsDetailPageState createState() => _FruitsDetailPageState();
}

class _FruitsDetailPageState extends State<FruitsDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
            Hero(
              tag: widget.imageTag,
              child: Container(
                height: MediaQuery.of(context).size.height,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  image: DecorationImage(image:
                  AssetImage(widget.imagePath),
                  fit: BoxFit.cover)
                ),
              ),
            ),

          Positioned(
            bottom: 20.0,
            left: 20.0,
            right: 20.0,
            child: Material(

            ),
          )

        ],
      ),
    );
  }
}
