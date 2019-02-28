import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  final String imageTag;

  final String imageUrl;

  DetailPage({@required this.imageTag, @required this.imageUrl});

  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Hero(
          tag: widget.imageTag,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(widget.imageUrl),
                    fit: BoxFit.cover)),
          ),
        ),

        Positioned(
          left: 24.0,
          top: MediaQuery.of(context).size.height / 4,

          child: Material(
            elevation: 4.0,
            borderRadius: BorderRadius.circular(17.0),
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: Colors.white,
              ),

              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(''
                    'Thanks for Watching', style:
                  TextStyle(fontSize: 30.0),),
              ),
            ),

          ),

        )
      ],
    );
  }
}
