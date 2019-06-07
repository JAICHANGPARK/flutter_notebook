import 'package:flutter/material.dart';

class TravelApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //TODO Code Top bar
          Positioned(
            top: 32,
            left: 32,
            right: 32,
            child: Container(
              color: Colors.red,
            ),
          ),

        ],
      ),
    );
  }
}

















