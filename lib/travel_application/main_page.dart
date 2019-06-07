import 'package:flutter/material.dart';

class TravelApplication extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Image.network(
              "https://snazzy-maps-cdn.azureedge.net/assets/127403-no-label-bright-colors.png?v=20171101110035",
              fit: BoxFit.cover,
            ),
          ),
          //TODO Code Top bar
          Positioned(
            top: 32,
            left: 32,
            right: 32,
            child: Container(
              height: 48,
//              color: Colors.red,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                      color: Colors.black,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  Container(
                    height: 48,
                    width: 48,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"))),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            bottom: 32,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(),
              child: Center(
                child: Container(
                  height: 60,
                  width: 60,
                  decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(8)),
                  child: Icon(
                    Icons.navigation,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 32,
            bottom: 120,
            right: 0,
            child: Container(
              height: 240,
              width: 30,
              decoration: BoxDecoration(
                color: Colors.black,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(16),
                    bottomLeft: Radius.circular(16)),
              ),
              child: Stack(
                children: <Widget>[
                  Transform.translate(
                    offset: Offset(-20, -20),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16)),
                      child: Center(
                        child: Icon(
                          Icons.whatshot,
                          color: Colors.redAccent,
                          size: 48,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    left: 32,
                    top: 72,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Paladin camp",
                          style: TextStyle(color: Colors.white),
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Text(
                          "Life happens outdoors. Camping and glamping in "
                          "Paladin camp enables you to experience joys..",
                          style: TextStyle(
                              color: Colors.white,
                              letterSpacing: 1.5,
                              wordSpacing: 1.2),
                        ),
                        SizedBox(height: 24,),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.map, color: Colors.white,),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Distance", style: TextStyle(
                                  color: Colors.white
                                ),),
                                SizedBox(height: 8,),
                                Text("3.5 mile", style: TextStyle(
                                  color: Colors.white
                                ),),
                              ],
                            ),
                            SizedBox(width: 48,),
                            Align(
                              alignment: Alignment.topCenter,
                              child: Icon(Icons.wb_cloudy, color: Colors.white,),
                            ),
                            SizedBox(width: 8,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("Climate", style: TextStyle(
                                    color: Colors.white
                                ),),
                                SizedBox(height: 8,),
                                Text("+28", style: TextStyle(
                                    color: Colors.white
                                ),),
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
