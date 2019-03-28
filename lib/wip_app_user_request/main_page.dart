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
      backgroundColor: Colors.indigoAccent,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 100,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: topClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                  color: Colors.blueGrey,
                ),
              ),
            ),
          ),
          Positioned(
            top: 180,
//            left: MediaQuery.of(context).size.width / 2 - 30,
            left: 20.0,
            child: Row(
              mainAxisSize: MainAxisSize.max,
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: <Widget>[
                Transform.translate(
                  offset: Offset(0.0, -20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38.0),
                          bottomLeft: Radius.circular(38.0),
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text("12",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Transform.translate(
                  offset: Offset(0.0, 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38.0),
                          bottomLeft: Radius.circular(38.0),
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("13",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Transform.translate(
                  offset: Offset(0.0, 40.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.indigoAccent,
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.3),
                            blurRadius: 3.0,
                            spreadRadius: 3.0,
                            offset: Offset(0.0, 1),

                          )
                        ],
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38.0),
                          bottomLeft: Radius.circular(38.0),
                        )),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: const EdgeInsets.only(),
                          child: Text(
                            "Tue",
                            style: TextStyle(
                              color: Colors.white
                            ),
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.only(bottom: 16.0),
                          child: Text(
                            "14",
                            style: TextStyle(
                              fontSize: 20,
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Transform.translate(
                  offset: Offset(0.0, 10.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38.0),
                          bottomLeft: Radius.circular(38.0),
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 16.0),
                        child: Text("15",
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.6),
                          fontWeight: FontWeight.bold,
                          fontSize: 20
                        ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
                Transform.translate(
                  offset: Offset(0.0, -20.0),
                  child: Container(
                    width: MediaQuery.of(context).size.width / 6,
                    height: 80,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(38.0),
                          bottomLeft: Radius.circular(38.0),
                        )),
                    child: Center(
                      child: Padding(
                        padding: const EdgeInsets.only(top: 20.0),
                        child: Text("16",
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontWeight: FontWeight.bold,
                              fontSize: 20
                          ),),
                      ),
                    ),
                  ),
                ),
                SizedBox(
                  width: 8,
                ),
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: ClipPath(
              clipper: topClipper(),
              child: Container(
                height: MediaQuery.of(context).size.height / 3,
                decoration: BoxDecoration(
                    gradient: LinearGradient(colors: [
                  Colors.indigoAccent,
                  Colors.indigo,
                ], begin: Alignment.topCenter, end: Alignment.bottomCenter)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Transform.translate(
                      offset: const Offset(0, 40),
                      child: Material(
                        elevation: 10,
                        color: Colors.white,
                        shape: CircleBorder(
                            side: BorderSide(color: Colors.pink, width: 10.0)),
                        child: Container(
                          height: 100,
                          width: 100,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(60),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                                  fit: BoxFit.cover)),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 48,
                    ),
                    Text(
                      "Dreamwalker",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    Text(
                      "Flutter Developer",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w400),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: 360,
            left: 16,
            right: 16,
            child: Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
//              color: Colors.white,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(17.0),
                color: Colors.white,

              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text("Today's plan"),
                      SizedBox(height: 8.0,),
                      Text("Project plan with Fantasy",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 20
                      ),)
                    ],
                  ),

                  Container(
                    height: 50,
                    width: 60,

                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.indigoAccent,
                    ),
                    child: Icon(Icons.arrow_forward, color: Colors.white,),
                  )
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

class topClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = new Path();
    path.lineTo(0.0, size.height - 40);
    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2, size.height);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    var secondControlPoint = Offset(size.width - (size.width / 4), size.height);
    var secondPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondPoint.dx, secondPoint.dy);
    path.lineTo(size.width, 0.0);
    path.close();
    // TODO: implement getClip
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => true;
}
