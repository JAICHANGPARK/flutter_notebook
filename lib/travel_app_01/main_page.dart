import 'package:flutter/material.dart';

class TravelApp extends StatelessWidget {
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
    return Scaffold(
      backgroundColor: Colors.deepOrange,
      body: Container(
        constraints: BoxConstraints.expand(),
        child: Stack(
          fit: StackFit.expand,
          textDirection: TextDirection.rtl,
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: MediaQuery.of(context).size.height - 60,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(45),
                  bottomLeft: Radius.circular(45)
                )),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 416,
                      left: 24,
                      right: 24,
                      child: Container(
                        height: 240,
                        width: MediaQuery.of(context).size.width,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.location_on),
                                SizedBox(width: 16,),
                                Text("Asia, Tokyo")
                              ],
                            ),
                            SizedBox(height: 16,),
                            Text("Tokyo GangGang", style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                            ),),
                            SizedBox(height: 24,),
                            Row(
                              children: <Widget>[
                                Text("Recommendation"),
                                SizedBox(width: 16,),
                                CircleAvatar(),
                                Transform.translate(child: CircleAvatar(backgroundColor:
                                  Colors.deepOrange,
                                child: Text("+28", style: TextStyle(
                                  color: Colors.white
                                ),),),
                                offset: Offset(-16, 0),),
                                Spacer(),
                                Text("More"),
                                Icon(Icons.keyboard_arrow_down)
                              ],
                            ),
                            SizedBox(height: 16,),
                            Container(
                              height: 60,
                              width: 240,
                              decoration: BoxDecoration(
                              ),
                              child: Text("Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labo..."),
                            )

                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      right: 24,
                      top: 416,
                      child: Container(
                        padding: const EdgeInsets.only(bottom: 8),
                        height: 80,
                        width: 50,
                        decoration: BoxDecoration(
                          color: Colors.grey.withOpacity(0.1),
                          borderRadius: BorderRadius.circular(48)
                        ),
                        child: Align(
                          alignment: Alignment.bottomCenter,
                          child: Icon(Icons.favorite_border),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              child: Container(
                height: (MediaQuery.of(context).size.height / 2) + 60,
                width: 250,
                decoration: BoxDecoration(color: Colors.grey,
                    borderRadius: BorderRadius.only(
                        bottomRight: Radius.circular(45),
                        bottomLeft: Radius.circular(45)
                    ),
                  image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2013/11/26/15/20/japan-218646_960_720.jpg",
                  ),fit: BoxFit.cover)
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16,
                      right: 16,
                      top: 40,
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.arrow_back_ios, color: Colors.white,),
                          SizedBox(width: 24,),
                          Container(
                            height: 50,
                            width: 100,
                            decoration: BoxDecoration(
                              color: Colors.white.withOpacity(0.4),
                              borderRadius: BorderRadius.circular(30)
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.white,),
                                SizedBox(width: 8,),
                                Text("4.3", style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                          ),
                          Spacer(),
                          Icon(Icons.share,color: Colors.white,)
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              bottom: 8,
              child: Container(
                height: 60,
                width: MediaQuery.of(context).size.width,
                child: Center(
                  child: Icon(Icons.flight_takeoff,color: Colors.white,size: 40,),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
















