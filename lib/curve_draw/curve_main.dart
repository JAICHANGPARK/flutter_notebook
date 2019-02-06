





import 'package:flutter/material.dart';
import 'package:flutter_notebook/movie_detail/home_page.dart';

class CurvedLinePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: CurvedPage(),
    );
  }
}


class CurvedPage extends StatefulWidget {
  @override
  _CurvedPageState createState() => _CurvedPageState();
}

class _CurvedPageState extends State<CurvedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: WaveHeaderImage(),

    );
  }
}

class WaveHeaderImage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: <Widget>[
        ClipPath(
          child: Image.network("https://cdn.pixabay.com/photo/2015/07/08/09/45/tokyo-835571_960_720.jpg"),
          clipper: BottomWaveClipper(),

        ),

       FlatButton(
         child: Text("Go Next Page"),
         onPressed: (){
           Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieHomePage()));
         },
       ),

//        FlatButton(
//          child: Text("A Little Rest Time about 10 min"),
//          onPressed: (){
////            Navigator.of(context).push(MaterialPageRoute(builder: (context) => MovieHomePage()));
//          },
//        )
      ],
    );
  }
}


class BottomWaveClipper extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    // TODO: implement getClip


    var firstControlPoint = new Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);

    var secondControlPoint = Offset(size.width - (size.width / 3.25), size.height - 65.0);
    var secondEndPoint = Offset(size.width, size.height - 40);

    var path = Path();
    path.lineTo(0.0, size.height - 30);

    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);
    path.lineTo(size.width, size.height - 40);

    //TODO This Code line .. important
    path.lineTo(size.width, 0.0);

    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }

}






























