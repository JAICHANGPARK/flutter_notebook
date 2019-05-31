import 'package:flutter/material.dart';

class ApartmentFinder extends StatelessWidget {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.orange,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                  ),
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: (MediaQuery.of(context).size.height / 2) +
                  (MediaQuery.of(context).size.height / 5),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                  ),
                ),
              ),
            ),
          ],
        ),
//        child: Column(
//          children: <Widget>[
//            //TODO Top UI
//            Expanded(
//              flex: 7,
//              child: Container(
//                decoration: BoxDecoration(color: Colors.red),
//              ),
//            ),
//            //TODO Implement Mid UI
//            Expanded(
//              flex: 3,
//              child: Container(
//                decoration: BoxDecoration(
//                    color: Colors.orange,
//                    borderRadius:
//                        BorderRadius.only(topLeft: Radius.circular(30))),
//              ),
//            ),
//            //TODO Implement Bottom UI
//            Expanded(
//              flex: 5,
//              child: Container(
//                decoration: BoxDecoration(
//                    color: Colors.yellow,
//                    borderRadius:
//                        BorderRadius.only(topLeft: Radius.circular(30))),
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }
}
