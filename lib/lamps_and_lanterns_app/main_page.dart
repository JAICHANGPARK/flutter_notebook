import 'package:flutter/material.dart';

class LampsAndLanternsApp extends StatelessWidget {
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
    var appColor = Color(0xff387272);
    return Scaffold(
      backgroundColor: appColor,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 1.3,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(64),
                ),
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: Container(
                      height: 60,
                      width: 120,
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius:
                              BorderRadius.only(topLeft: Radius.circular(38))),
                      child: Center(
                        child: Icon(
                          Icons.shopping_cart,
                          size: 34,
                          color: Colors.white,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 0,
                    top: 0,
                    child: Container(
                      height: 84,
                      width: 80,
                      decoration: BoxDecoration(
                          color: appColor,
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(38))),
                      child: Center(
                        child: Icon(
                          Icons.arrow_forward_ios,
                          color: Colors.white,
                          size: 38,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 84,
                    left: 32,
                    bottom: 32,
                    child: Container(
                      width: 200,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            "Top Picks",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                                fontFamily: 'Montserrat'),
                          ),
                          Text(
                            "In china, hangzhou",
                            style: TextStyle(
                                color: Colors.grey,
                                fontWeight: FontWeight.w600,
                                fontSize: 18,
                                fontFamily: 'Montserrat'),
                          ),
                          SizedBox(
                            height: 24,
                          ),
                          Row(
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "\$",
                                style: TextStyle(
                                    fontSize: 22,
                                    color: appColor,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              ),
                              Text(
                                "25",
                                style: TextStyle(
                                    color: appColor,
                                    fontSize: 32,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'),
                              )
                            ],
                          ),
                          Spacer(),
                          Text(
                            "NIGHT LAMP",
                            style: TextStyle(
                                color: Colors.grey, fontFamily: 'Montserrat'),
                          ),
                          SizedBox(height: 4,),
                          Text(
                            "Olivia",
                            style: TextStyle(
                                fontSize: 24, fontFamily: 'Montserrat'),
                          ),
                          SizedBox(height: 4,),
                          Row(
                            children: <Widget>[
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Icon(
                                    Icons.lightbulb_outline,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 16,
                              ),
                              Container(
                                height: 38,
                                width: 38,
                                decoration: BoxDecoration(
                                    border: Border.all(color: Colors.grey),
                                    borderRadius: BorderRadius.circular(8)),
                                child: Center(
                                  child: Icon(
                                    Icons.alarm,
                                    color: Colors.grey,
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 32,
                    top: 140,
                    bottom: 120,
                    child: Container(
                      width: 240,
                      color: Colors.greenAccent,
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


















