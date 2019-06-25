import 'dart:ui';

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
              height: deviceHeight / 1.6,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    colors: [
                      Colors.black.withOpacity(0.8),
                      Colors.black.withOpacity(0.2)
                    ],
                    begin: Alignment.bottomCenter,
                    end: Alignment.center,
                    tileMode: TileMode.clamp),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://media.npr.org/assets/img/2017/02/10/norsemythology_wide-28d9ef0ce63ed549c9a4010ae41db366cec8463a.jpg?s=6"),
                    fit: BoxFit.cover,
                colorFilter: ColorFilter.srgbToLinearGamma()),
              ),
            ),
          ),
          Positioned(
            top: deviceHeight / 3,
            left: 24,
            right: 24,
            child: Container(
              height: deviceHeight / 4,
//              decoration: BoxDecoration(
//                color: Colors.white
//              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text(
                    "Neil Gaiman",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
//                        fontWeight: FontWeight.bold
                    ),
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    "Norse Mythology",
                    style: TextStyle(
                        color: Colors.white,
                        fontSize: 28,
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 16),
                  Container(
                    height: 2,
                    width: 32,
                    color: Colors.white,
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(
                    children: <Widget>[
                      Text(
                        "Wojciech Zoladkowicz",
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(
                        width: 24,
                      ),
                      Text(
                        "29h51min",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Row(

                    children: <Widget>[
                      RaisedButton(
                        shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(4)),
                        onPressed: () {},
                        color: CupertinoColors.activeBlue,
                        child: Text(
                          "\$9.99",
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(
                        width: 16,
                      ),
                      Container(
                        height: 36,
                        width: 120,
                        decoration: BoxDecoration(color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4),
                        backgroundBlendMode: BlendMode.colorBurn,
                        border: Border.all(
                          color: Color(0xffd4af37),
                          width: 3,
                        )),
                        child: Center(
                          child: Text("Buy Subscription",
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold
                          ),),
                        ),


                      ),
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












