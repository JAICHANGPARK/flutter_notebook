import 'package:flutter/material.dart';

class PropertyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
      debugShowCheckedModeBanner: false,
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
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
        body: SingleChildScrollView(
          child:Column(
            children: <Widget>[
              SizedBox(height: 24,),
              Container(
                height: 120,
                width: deviceWidth,
                decoration: BoxDecoration(
                  border: Border.all()
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      left: 16,
                      top: 16,
                      child:Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text("Find your",
                          style: TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                            fontSize: 24
                          ),
                          ),
                          Text("Favorite Property",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 24
                            ),),
                          SizedBox(height: 8,),
                          Text("50 Property Available",
                            style: TextStyle(
                                color: Colors.grey.withOpacity(0.8),
                                fontSize: 16
                            ),),
                        ],
                      ),
                    ),
                    Positioned(
                      right: 24,
                      top: 20,
                      child: CircleAvatar(
                        backgroundImage:NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 24,),
              Container(
                height: 280,
                width: deviceWidth,
                padding: const EdgeInsets.only(left: 16),
                decoration: BoxDecoration(
                  border: Border.all(),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text("Top Picks",
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 28,
                      fontWeight: FontWeight.bold
                    ),),
                    SizedBox(height: 16,),
                    Container(
                      height: 224,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(right: 24,
                            top: 4, bottom: 4, left: 4),
                            width: 190,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(18),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.black.withOpacity(0.1),
                                  blurRadius: 3,
                                  spreadRadius: 1,
                                )
                              ]
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 24,
                                top: 4, bottom: 4, left: 4),
                            width: 190,
                            decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(18),
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.black.withOpacity(0.1),
                                    blurRadius: 3,
                                    spreadRadius: 1,
                                  )
                                ]
                            ),
                          ),

                        ],
                      ),
                    )

                  ],
                ),
              )
            ],
          ),
        ),
    );
  }
}























