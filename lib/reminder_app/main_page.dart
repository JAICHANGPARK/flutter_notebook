import 'package:flutter/material.dart';

class ReminderApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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
    Color backColor = Color(0xff010a20);
    return Scaffold(
      backgroundColor: backColor,
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Placeholder(),
          )
        ],
      ),
    );
  }
}


































