

import 'package:flutter/material.dart';


class DabloonUserRequestApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}
class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child:Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              color: Colors.redAccent,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.arrow_back, color: Colors.white,
                    size: 32,
                    ),
                    onPressed: (){},
                  ),
                  SizedBox(height: 16.0,),
                  ListView(
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    children: <Widget>[
                      Text("Marble Statues"),
                      Text("Coins")
                    ],
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

