import 'package:flutter/material.dart';


class PlayListDetailPage extends StatefulWidget {
  @override
  _PlayListDetailPageState createState() => _PlayListDetailPageState();
}

class _PlayListDetailPageState extends State<PlayListDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: NestedScrollView(headerSliverBuilder: (context, innerBox){
            return <Widget>[
              SliverAppBar(
                expandedHeight: 300,
                title: new Text('NestedScrollView demo'),
                pinned: true,
              ),

            ];
      }, body: ListView(
        children: <Widget>[
          ListTile(
            title: Text("hello"),
          ),
          Hero(tag: "user_icon",child: Container()),
          Hero(tag: "user_add",child: Container())
        ],
      )),
    );
  }
}
