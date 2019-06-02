import 'package:flutter/material.dart';

class FoodApplicationDesign extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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
     body: SingleChildScrollView(
       scrollDirection: Axis.vertical,
       child: Stack(
         children: <Widget>[
           Positioned(
             left: 0,
             top: 0,
             right: 0,
             child: Container(
               
             ),
           )
         ],
       ),
     ),
    );
  }
}




















