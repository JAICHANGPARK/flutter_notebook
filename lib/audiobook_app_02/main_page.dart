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

class _MainPageState extends State<MainPage> with
SingleTickerProviderStateMixin{
 AnimationController _animationController;
 Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController = AnimationController(vsync: this, duration:
    Duration(minutes: 1));
    animation = Tween<double>(begin: 0, end: 1.5).animate(_animationController);
    _animationController.addListener((){
      setState(() {

      });
    });
    _animationController.addStatusListener((a){
      setState(() {

      });
    });
//    animation..addStatusListener((s){
//      setState(() {
//
//      });
//    });
    _animationController.forward();
  }
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
                        decoration: BoxDecoration(
                            color: Colors.transparent,
                            borderRadius: BorderRadius.circular(4),
                            backgroundBlendMode: BlendMode.colorBurn,
                            border: Border.all(
                              color: Color(0xffd4af37),
                              width: 3,
                            )),
                        child: Center(
                          child: Text(
                            "Buy Subscription",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: deviceHeight / 1.7,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Discover:SciFi & Fantasy",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 18,
                  ),
                ),
                Text(
                  "See all",
                  style: TextStyle(
                    color: CupertinoColors.activeBlue,
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 60,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Container(height: 24,
                decoration: BoxDecoration(
                  color: Colors.black,
                ),
                child: Center(
                  child: Text("Chapter 01. - Winter is comming",
                  style: TextStyle(
                    color: Colors.white
                  ),),
                ),),
                LinearProgressIndicator(value: animation.value,
               valueColor: AlwaysStoppedAnimation<Color>(Color(0xffd4af37)),
               backgroundColor: Colors.black,),
              ],
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.symmetric(horizontal: 16),
              height: 60,
              width: deviceWidth,
              decoration: BoxDecoration(
                color: CupertinoColors.white,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      CupertinoIcons.book,
                      color: CupertinoColors.activeBlue,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      CupertinoIcons.shopping_cart,
                      color: CupertinoColors.inactiveGray,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                  SizedBox(
                    width: 36,
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      CupertinoIcons.folder,
                      color: CupertinoColors.inactiveGray,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                  IconButton(
                    padding: EdgeInsets.zero,
                    icon: Icon(
                      CupertinoIcons.profile_circled,
                      color: CupertinoColors.inactiveGray,
                      size: 38,
                    ),
                    onPressed: () {},
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 0,
            left: deviceWidth / 2.5,
            child: Transform.translate(
              offset: Offset(0, 8),
              child: Container(
                height: 76,
                width: 76,
                decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    color: Colors.blue,
                    gradient: LinearGradient(
                        colors: [
                          Colors.lightBlueAccent,
                          Colors.blue,
                        ],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.1, 0.6])),
                child: Center(
                  child: Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border: Border.all(color: Colors.white, width: 3)),
                    child: Center(
                      child: Icon(
                        Icons.play_arrow,
                        color: Colors.white,
                        size: 21,
                      ),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
