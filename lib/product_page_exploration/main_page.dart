import 'package:flutter/material.dart';


class ProductPageExploration extends StatelessWidget {
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
    var centerHeight = MediaQuery.of(context).size.height / 2;
    return Scaffold(
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
                Container(
                  height: centerHeight,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all()
                  ),
                )
            ],
          ),
        ),
    );
  }
}


















