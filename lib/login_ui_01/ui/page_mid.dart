import 'package:flutter/material.dart';

const List<Color> aquaGradients = [
  Color(0xff5aeaf1),
  Color(0xff8ed7da),
];

class WaveFooter extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: FooterWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
            gradient: LinearGradient(
                colors: aquaGradients,
                begin: Alignment.center,
                end: Alignment.bottomRight)),
        height: MediaQuery.of(context).size.height / 3,
      ),
    );
  }
}

class CirclePink extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: new Offset(-70.0, 90.0),
      child: Material(
        color: Colors.pink,
        child: Padding(padding: EdgeInsets.all(120)),
        shape: CircleBorder(
          side: BorderSide(color: Colors.white, width: 15.0),
        ),
      ),
    );
  }
}

class CircleYellow extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Transform.translate(
      offset: new Offset(0.0, 210.0),
      child: Material(
        color: Colors.yellow,
        child: Padding(padding: EdgeInsets.all(140)),
        shape: CircleBorder(
          side: BorderSide(color: Colors.white, width: 15.0),
        ),
      ),
    );
  }
}

class FooterWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var path = new Path();
    path.moveTo(size.width, 0.0);
    path.lineTo(size.width , size.height);
    path.lineTo(0.0, size.height);
    path.lineTo(0.0, size.height - 60);
    var firstControlPoint = new Offset(size.width - (size.width / 6), size.height);
    var firstEndPoint = new Offset(size.width, 0.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;

}









