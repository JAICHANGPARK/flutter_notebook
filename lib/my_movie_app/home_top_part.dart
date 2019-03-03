import 'package:flutter/material.dart';

class HomeScreenTopPart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 420.0,
      child: Stack(
        children: <Widget>[
          ClipPath(
            clipper: MyCustomClipper(),
            child: Container(
              height: 370.0,
              decoration: BoxDecoration(color: Colors.white, boxShadow: [
                BoxShadow(
                    color: Colors.black12,
                    offset: Offset(0.0, 10.0),
                    blurRadius: 10.0)
              ]),
              child: Stack(
                children: <Widget>[
                  Image.network(
                    "https://dazedimg-dazedgroup.netdna-ssl.com/900/azure/dazed-prod/1250/6/1256757.jpg",
                    fit: BoxFit.cover,
                    width: double.infinity,
                    height: double.infinity,
                  ),
                  Container(
                    height: double.infinity,
                    width: double.infinity,
                    decoration: BoxDecoration(
                        gradient: LinearGradient(
                            colors: [Color(0x00000000), Color(0xD9333333)],
                            stops: [0.0, 0.9],
                            begin: FractionalOffset(0.0, 0.0),
                            end: FractionalOffset(0.0, 1.0))),
                    child: Padding(
                      padding: EdgeInsets.only(top: 120.0, left: 95.0),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "WATCH BEFORE",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 15.0,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            "BLACK MIRROR: SEASON 3",
                            style: TextStyle(
                                color: Colors.white,
                                fontFamily: 'Montserrat',
                                fontSize: 40.0),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 370.0,
            right: -20,
            child: FractionalTranslation(translation: Offset(0.0, -0.5),
            child: Row(
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  onPressed: (){},
                  child: Icon(Icons.add, color : Color(0xffe52020),
                  ),
                ),
                SizedBox(width: 12.0,),
                ClipRRect(
                  borderRadius: BorderRadius.circular(30.0),
                  child: RaisedButton(onPressed: (){},
                    color: Color(0xffe52020),
                    padding: EdgeInsets.symmetric(vertical: 15.0, horizontal: 80.0),
                    child: Row(
                      children: <Widget>[
                        Text("Watch Now",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 15.0,
                            fontFamily: 'Montserrat'
                          ),
                        ),
                        
                        SizedBox(width: 5.0,),
                        RotatedBox(
                          quarterTurns: 2,
                          child: Icon(Icons.arrow_back,
                          size: 25.0,
                          color: Colors.white,),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),),
          )

        ],
      ),
    );
  }
}

class MyCustomClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0.0, size.height - 80.0);

    var controlpoint = Offset(40.0, size.height);
    var endpoint = Offset((size.width / 2) , size.height);

    path.quadraticBezierTo(
        controlpoint.dx, controlpoint.dy, endpoint.dx, endpoint.dy);
    path.lineTo(size.width, size.height);
    path.lineTo(size.width, 0.0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return true;
  }
}
