import 'dart:async';
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:fluttery_seekbar/fluttery_seekbar.dart';

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
//  Color pinkColor = Color(0xfffe1483);
  Color pinkColor = Colors.green;
  double _thumbPercent = 0.0;
  double userPercent = 0.0;
  Timer timer;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    timer = Timer.periodic(Duration(seconds: 1), timerCallback);
  }

  void timerCallback(Timer t) {
    setState(() {
      print(t.tick);
      _thumbPercent += 0.005;
      print(_thumbPercent);
      if(_thumbPercent == 1.0){
        _thumbPercent = 0;
      }

    });
  }

  Widget _buildRadialSeekBar() {
    return RadialSeekBar(
      trackColor: Colors.red.withOpacity(0.5),
      trackWidth: 2.0,
      progressColor: pinkColor,
      progressWidth: 5.0,
      thumbPercent: _thumbPercent,
      thumb: CircleThumb(
        color: pinkColor,
        diameter: 20.0,
      ),
      progress: _thumbPercent,
      onDragUpdate: (double percent) {
        setState(() {
          _thumbPercent = percent;
        });
      },

    );
  }

  Widget song(String image, String title, String subtitle) {
    return Padding(
      padding: EdgeInsets.all(8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Image.network(
            image,
            width: 40.0,
            height: 40.0,
          ),
          SizedBox(
            width: 8.0,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text(
                title,
                style: TextStyle(color: pinkColor),
              ),
              Text(
                subtitle,
                style: TextStyle(color: pinkColor),
              )
            ],
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: pinkColor,
            ),
            onPressed: () {}),
        title: Text(
          'Dream Music',
          style: TextStyle(color: pinkColor),
        ),
        centerTitle: true,
        actions: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: pinkColor,
            ),
            onPressed: () {},
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Container(
                width: 250.0,
                height: 250.0,
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                          color: pinkColor.withOpacity(0.5),
                          shape: BoxShape.circle),
                      child: Padding(
                        padding: EdgeInsets.all(12.0),
                        child: _buildRadialSeekBar(),
                      ),
                    ),
                    Center(
                      child: Container(
                        width: 200.0,
                        height: 200.0,
                        child: Padding(
                          padding: EdgeInsets.all(3.0),
                          child: ClipOval(
                            clipper: MyClipper(),
                            child: Image.network(
                              "http://cdn.keyakizaka46.com/images/14/ae6/e1579b4715fd5fe2e21a80be9a631/500_320_102400.jpg",
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 25.0,
            ),
            Column(
              children: <Widget>[
                Text(
                  "欅坂46",
                  style: TextStyle(
                      color: pinkColor,
                      fontSize: 20.0,
                      fontFamily: 'Montserrat'),
                ),
                SizedBox(
                  height: 8.0,
                ),
                Text(
                  "Kuroi Hitsuji",
                  style: TextStyle(
                      color: pinkColor,
                      fontSize: 18.0,
                      fontFamily: 'Montserrat'),
                )
              ],
            ),
            SizedBox(
              height: 5.0,
            ),
            Container(
              width: 350.0,
              height: 150.0,
              child: Stack(
                children: <Widget>[
                  Center(
                    child: Container(
                      height: 65.0,
                      width: 290.0,
                      decoration: BoxDecoration(
                          border: Border.all(color: pinkColor, width: 3.0),
                          borderRadius: BorderRadius.circular(40.0)),
                      child: Padding(
                        padding: EdgeInsets.symmetric(horizontal: 25.0),
                        child: Row(
                          children: <Widget>[
                            Icon(
                              Icons.fast_rewind,
                              size: 55.0,
                              color: pinkColor,
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Icon(
                              Icons.fast_forward,
                              size: 55.0,
                              color: pinkColor,
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 92.0,
                      height: 92.0,
                      decoration: BoxDecoration(
                          color: pinkColor, shape: BoxShape.circle),
                      child: IconButton(
                        icon: Icon(
                          Icons.play_arrow,
                          size: 45.0,
                          color: Colors.white,
                        ),
                        onPressed: () {

                        },
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              height: 190.0,
              width: double.infinity,
              child: Stack(
                children: <Widget>[
                  Positioned(
                    left: -25.0,
                    child: Container(
                      width: 50.0,
                      height: 190.0,
                      decoration: BoxDecoration(
                          color: pinkColor,
                          borderRadius: BorderRadius.only(
                              topRight: Radius.circular(30.0),
                              bottomRight: Radius.circular(30.0))),
                    ),
                  ),
                  Positioned(
                    right: -25,
                    child: Container(
                      width: 50.0,
                      height: 190.0,
                      decoration: BoxDecoration(
                          color: pinkColor,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(30.0),
                            bottomLeft: Radius.circular(30.0),
                          )),
                    ),
                  ),
                  Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        song(
                            "http://cdn.keyakizaka46.com/images/14/d98/73cf26993003929358051932ee523/500_320_102400.jpg",
                            "ガラスを割れ!",
                            "6th"),
                        song(
                            "http://cdn.keyakizaka46.com/images/14/31b/551f961a770e4aa751eb21f7ec57b-01/500_320_102400.jpg",
                            "風に吹かれても",
                            "5th"),
                        song(
                            "http://cdn.keyakizaka46.com/images/14/88e/dba8706608956122231d1a5616684/500_320_102400.jpg",
                            "不協和音",
                            "4th"),
                      ],
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class MyClipper extends CustomClipper<Rect> {
  @override
  Rect getClip(Size size) {
    Rect rect = Rect.fromCircle(
        center: Offset(size.width / 2, size.height / 2),
        radius: min(size.width, size.height) / 2);

    return rect;
  }

  @override
  bool shouldReclip(CustomClipper<Rect> oldClipper) {
    // TODO: implement shouldReclip
    return true;
  }
}
