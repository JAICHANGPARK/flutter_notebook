

import 'package:flutter/material.dart';

class SplitOrder extends StatelessWidget {

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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 24,
            right: 0,
            child: IconButton(icon: Icon(Icons.arrow_back_ios, color: Colors.black,),
                onPressed: (){}),

          )
        ],
      ),
    );
  }
}


















