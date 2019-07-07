import 'package:flutter/material.dart';

class EventsManagementApp extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child:Row(
              children: <Widget>[
                Expanded(
                  child: Placeholder(),
                ),
                Expanded(
                  child: Placeholder(),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}





























