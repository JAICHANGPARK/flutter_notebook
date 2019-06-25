
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
class AudiobookApp extends StatelessWidget {
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
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.black,
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              height: deviceHeight / 1.8,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(
                  "https://media.npr.org/assets/img/2017/02/10/norsemythology_wide-28d9ef0ce63ed549c9a4010ae41db366cec8463a.jpg?s=6"
                ),
                fit: BoxFit.cover),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight / 3,
            left: 24,
            right: 24,
            child: Container(
              height: deviceHeight / 4,
              decoration: BoxDecoration(
                color: Colors.white
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("Neil Gaiman"),
                  SizedBox(height: 8,),
                  Text("Norse Mythology"),
                  SizedBox(height: 16),
                  Container(
                    height: 4,
                    width: 24,
                    color: Colors.black,
                  ),
                  SizedBox(height: 16,),
                  Row(
                    children: <Widget>[
                      Text("Wojciech Zoladkowicz"),
                      SizedBox(width: 24,),
                      Text("29h51min"),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      
                    ],
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}





















