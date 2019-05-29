

import 'package:flutter/material.dart';

class CraftWorkDesign extends StatelessWidget {
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
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
//              color: Colors.red
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "New",
                  style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 34,
                    letterSpacing: 1.8
                  ),

                ),
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: IconButton(
                    onPressed: (){},
                    icon: Icon(Icons.ac_unit),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(16),

            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 24,
                  bottom: 24,
                  child: Text("Struct illustrations",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.2
                  ),),
                )
              ],
            ),

          )
        ],
      ),
    );
  }
}


















