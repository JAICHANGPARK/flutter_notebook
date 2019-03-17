

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/app_res/strings.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds: 2), () => Navigator.pop(context));

  }
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff112030),
      child: Center(
        child: Stack(
          children: <Widget>[
            Image.asset(Strings.INFO_TAB_IMAGES_PATH_DK_MAIN_GRAPHIC,
            fit: BoxFit.fitWidth,),
            Image.asset(Strings.INFO_TAB_IMAGES_PATH_DK_TITLE,
            fit: BoxFit.fitWidth,)
          ],
        ),
      ),
    );
  }
}













