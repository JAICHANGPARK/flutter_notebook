
import 'package:flutter/material.dart';
import 'package:flutter_notebook/login_ui_01/ui/background.dart';
import 'package:flutter_notebook/login_ui_01/ui/input_page.dart';
import 'package:flutter_notebook/login_ui_01/ui/page_top.dart';

class NewLoginPage extends StatelessWidget {
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
    body: Stack(
      children: <Widget>[
       Background(),
       LoginWidget(),
      ],
    ),
    );
  }
}

















