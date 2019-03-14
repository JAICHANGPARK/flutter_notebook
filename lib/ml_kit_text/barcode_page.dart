


import 'package:flutter/material.dart';

class MyMLKitBarcode extends StatelessWidget {
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
      appBar: AppBar(
        title: Text("ML KIT BARCODE", style: TextStyle(
          color: Colors.black
        ),),
        elevation: 0.0,
        backgroundColor: Colors.white,
      ),
      body: Container(),
    );
  }
}














