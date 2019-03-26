
import 'package:flutter/material.dart';

const List<Color> orangeGradients = [
  Color(0xffff9844),
  Color(0xffff8853),
  Color(0xfffd7267)
];

class WaveHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TopWaveClipper(),
      child: Container(
        decoration: BoxDecoration(
          gradient: LinearGradient(colors: orangeGradients
          ,begin: Alignment.topLeft,
          end: Alignment.center)
        ),
        height: MediaQuery.of(context).size.height / 2.5,
      ),
    );
  }
}

class TopWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height);
    var firstControlPoint = new Offset(size.width  / 7 , size.height - 30);
    var firstEndPoint = new Offset(size.width/6, size.height / 1.5);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = new Offset(size.width / 5, size.height / 4);
    var secondEndPoint = new Offset(size.width /1.5, size.height / 5);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx , secondEndPoint.dy);
    var thirdControlPoint = new Offset(size.width - (size.width / 9), size.height / 6);
    var thirdEndPoint = new Offset(size.width, 0.0);
    path.quadraticBezierTo(thirdControlPoint.dx, thirdControlPoint.dy,
        thirdEndPoint.dx, thirdEndPoint.dy);
    path.lineTo(size.width, 0.0);
    
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;


}
