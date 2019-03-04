


import 'package:flutter/material.dart';


class MyMusicApp extends StatelessWidget {
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
  Color pinkColor = Color(0xfffe1483);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(icon: Icon(Icons.arrow_back, color:
        pinkColor,),
            onPressed: (){}),
        title: Text('Dream Music',
        style: TextStyle(
          color: pinkColor
        ),),
      ),
    );
  }
}















