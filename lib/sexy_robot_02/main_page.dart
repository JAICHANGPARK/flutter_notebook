import 'package:flutter/material.dart';

class SexyRobotApp extends StatelessWidget {
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
    Color sexyColor = Color(0xff003366);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(height: 24,),
          //TODO Implement Appbar
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                horizontal: 16
              ),
              decoration: BoxDecoration(
                border: Border.all()
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Sexy  ROBOT".toUpperCase(),
                  style: TextStyle(
                    color:sexyColor,
                    fontFamily: 'Montserrat',
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    letterSpacing: 1.2
                  ),),
                  IconButton(
                    icon: Icon(Icons.apps),
                    color: sexyColor,
                    onPressed: (){
                    },
                  )
                ],
              ),
            ),
          ),
          //TODO Implement menu
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                  border: Border.all(
                    color: sexyColor,
                    width: 0.5,
                  ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                )
              ),
            ),
          ),
          //TODO Implement mechanical center
          Expanded(
            flex: 7,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),
          //TODO Implement spec
          Expanded(
            flex: 4,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all()
              ),
            ),
          ),
          //TODO Implement price ui
          Expanded(
            flex: 2,
            child: Container(
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

















