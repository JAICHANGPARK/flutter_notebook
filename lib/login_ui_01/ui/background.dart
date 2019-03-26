

import 'package:flutter/material.dart';
import 'package:flutter_notebook/login_ui_01/ui/page_mid.dart';
import 'package:flutter_notebook/login_ui_01/ui/page_top.dart';

class Background extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          new Stack(
            alignment: Alignment.bottomCenter,
            children: <Widget>[
              Image.network("https://cdn.dribbble.com/users/902546/screenshots/6233250/11_copy_2x.png",
              width: MediaQuery.of(context).size.width / 1.5,),
              WaveHeader(),
            ],
          ) ,
          Expanded(
            child: Container(),
          ),
          Stack(
            alignment: Alignment.bottomLeft,
            children: <Widget>[
              WaveFooter(),
              CirclePink(),
              CircleYellow(),
            ],
          )
        ],
      ),
    );
  }
}



