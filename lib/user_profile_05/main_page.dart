import 'package:flutter/material.dart';

class UserProfile05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Transform.translate(
                    offset: Offset(0, -820),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Container(
                        height: MediaQuery.of(context).size.height * 2,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(color: Colors.black.withOpacity(0.2),
                            blurRadius: 3, spreadRadius: 3)
                          ],
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.green,
                                  Colors.lightGreen,
                                  Colors.green.withOpacity(1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0, 0.8, 1],
                                tileMode: TileMode.clamp)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 24,
                  left: 24,
                  right: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 116,
                  child: Container(
                    height: 160,
                    width: 160,
                    decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.redAccent,
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            fit: BoxFit.cover)),
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Dreamwalker",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on,color: Colors.grey,
                      size: 18,),
                      Text('Tokyo, Japan | Seoul, Republic of Korea', style: TextStyle(
                        color: Colors.grey,
                      ),),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Text("I'm Flutter Lover, Keep Study Flutter blahblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah ",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 10
                  ),)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1.2k",
                        style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold
                      ),),
                      Text("shots", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),)
                    ],
                  ),
                  SizedBox(width: 16),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("10.2k", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("Followers", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),)
                    ],
                  ),
                  SizedBox(width: 16),
                  VerticalDivider(  color: Colors.grey,),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("Following",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 12
                      ),)
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Placeholder(),
          ),
          Expanded(
            flex: 5,
            child: Placeholder(),
          ),
        ],
      ),
    );
  }
}


















