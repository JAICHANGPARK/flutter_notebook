import 'package:flutter/material.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_header.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_header_test.dart';
import 'package:flutter_notebook/fidibo_app_concept/main_mid_info.dart';

class FidiboMainPage extends StatelessWidget {
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
//      appBar: AppBar(
//        leading: Row(
//          children: <Widget>[
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//
//            IconButton(
//              icon: Icon(Icons.bookmark_border),
//            ),
//          ],
//        ),
//        actions: <Widget>[],
//      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24.0,
            ),

            MainHeaderTest(),
//            MainHeader(),
            SizedBox(
              child: Container(
                color: Colors.white,
              ),
              height: 16.0,
            ),
            MainMidInformation(),
          ],
        ),
      ),
    );
  }


}
