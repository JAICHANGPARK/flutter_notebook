
import 'package:flutter/material.dart';
import 'package:flutter_notebook/collaps_nav_bar/themes.dart';
import 'package:flutter_notebook/collaps_nav_bar/ui_component/collapse_navigation.dart';

class CollapsMainPage extends StatelessWidget {
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
        elevation: 0.0,
        backgroundColor: drawerBackgroundColor,
        title: Text('Collapsing Navigation'),
      ),
//      drawer: CollapsingNavigationDrawer(),
      body: Stack(
        children: <Widget>[
          Container(color: Colors.white,),
          CollapsingNavigationDrawer(),
        ],
      ),
    );
  }
}

