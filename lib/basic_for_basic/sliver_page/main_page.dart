

import 'package:flutter/material.dart';

class SliverAppPage extends StatefulWidget {
  @override
  _SliverAppPageState createState() => _SliverAppPageState();
}

class _SliverAppPageState extends State<SliverAppPage> {
  List<Widget> _item = new List();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    for(var i = 0; i<10; i++){
      var item = Container(
        color: i.isOdd? Colors.blue : Colors.white,
        height: 100.0,
        child: Center(
          child: Text(" No, $i",
          style: TextStyle(
            fontSize: 24.0,

          ),),
        ),
      );
      _item.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: <Widget>[
          SliverAppBar(
            pinned: true,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              title: Text("Sliver App Bar"),
              centerTitle: false,
              background: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Image.network("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",fit: BoxFit.fill,),
                ],
              ),
            ),
            actions: <Widget>[
              IconButton(
                onPressed: (){},
                icon: Icon(Icons.category),
                tooltip: 'icon Button',
              )
            ],
          ),
          SliverList(
            delegate: SliverChildListDelegate(_item),
          )
        ],
      ),
    );
  }
}
