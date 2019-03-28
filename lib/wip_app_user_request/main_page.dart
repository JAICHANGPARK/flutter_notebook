import 'package:flutter/material.dart';
class UserRequestApp extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              color: Colors.indigo,
              child: ClipPath(
                clipper: topClipper(),
              ),
            ),
          )
        ],
      ),
    );
  }
}


class topClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = new Path();

    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}




