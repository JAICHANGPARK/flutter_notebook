import 'package:flutter/material.dart';

class CinemaTicketApp extends StatelessWidget {
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
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 11,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.grey
              ),
            )
          ],

        ),
      ),
    );
  }
}

























