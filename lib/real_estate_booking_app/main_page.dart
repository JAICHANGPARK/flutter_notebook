import 'package:flutter/material.dart';


class RealEstateBookingApp extends StatelessWidget {
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
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Expanded(
            flex: 1,
            child:Container(
              decoration: BoxDecoration(
                border: Border.all()
              ),
              
            ),
          ),
          Expanded(
            flex: 1,
            child:Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),

          Expanded(
            flex: 6,
            child:Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child:Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child:Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),
        ],
      ),
    );
  }
}






















