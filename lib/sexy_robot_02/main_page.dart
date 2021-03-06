import 'package:flutter/material.dart';

class SexyRobotApp extends StatelessWidget {
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
    Color sexyColor = Color(0xff003366);
    return Scaffold(
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          //TODO Implement Appbar
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Sexy  ROBOT".toUpperCase(),
                    style: TextStyle(
                        color: sexyColor,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        letterSpacing: 1.2),
                  ),
                  IconButton(
                    icon: Icon(Icons.apps),
                    color: sexyColor,
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),

          //TODO Implement menu
          Expanded(
            flex: 2,
            child: Container(
              padding: const EdgeInsets.symmetric(
                vertical: 16,
              ),
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
                border: Border.all(
                  color: sexyColor,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(16),
                  bottomLeft: Radius.circular(16),
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: <Widget>[
                  Icon(
                    Icons.favorite,
                    color: sexyColor,
                  ),
                  Text(
                    "01_Heart",
                    style: TextStyle(
                        color: sexyColor, fontWeight: FontWeight.bold),
                  ),
                  VerticalDivider(
                    color: sexyColor,
                    width: 0.5,
                  ),
                  Icon(
                    Icons.fingerprint,
                    color: sexyColor.withOpacity(0.5),
                  ),
                  Text(
                    "02_Arm",
                    style: TextStyle(
                        color: sexyColor.withOpacity(0.5),
                        fontWeight: FontWeight.bold),
                  ),
                  VerticalDivider(
                    color: sexyColor,
                    width: 0.5,
                  ),
                  Icon(Icons.favorite),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 24,
          ),
          //TODO Implement mechanical center
          Expanded(
            flex: 7,
            child: Container(
              child: Stack(
                children: <Widget>[
                  Positioned(
                    right: 0,
                    top: 0,
                    bottom: 0,
                    child: Container(
                      width: MediaQuery.of(context).size.width / 2,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        shrinkWrap: true,
                        children: <Widget>[
                          Container(
                            margin: const EdgeInsets.only(
                                right: 16, bottom: 4, top: 4),
                            width: MediaQuery.of(context).size.width / 2.3,
                            decoration: BoxDecoration(
                              color: sexyColor,
                              borderRadius: BorderRadius.circular(16),
                            ),
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  flex: 8,
                                  child: Transform.translate(
                                    offset: Offset(-64, 16),
//                                    child: Container(
//                                      decoration: BoxDecoration(
//                                        image: DecorationImage(
//                                            image: NetworkImage(
//                                                "https://i.pinimg.com/originals/e5/c2/27/e5c2276a61605f6c3def9d617f5b5498.png")),
//                                      ),
//                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Container(
                                      padding: const EdgeInsets.all(8),
                                      child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: <Widget>[
                                          Row(
                                            children: <Widget>[
                                              Text(
                                                ""
                                                "Silver Wing",
                                                style: TextStyle(
                                                    color: Colors.white),
                                              ),
                                              SizedBox(
                                                width: 8,
                                              ),
                                              Container(
                                                height: 8,
                                                width: 8,
                                                decoration: BoxDecoration(
                                                    color: Colors.white,
                                                    shape: BoxShape.circle,
                                                    border: Border.all(
                                                        color: Colors.grey,
                                                        width: 2)),
                                              )
                                            ],
                                          ),
                                          Text(
                                            "White",
                                            style:
                                                TextStyle(color: Colors.white),
                                          ),
                                        ],
                                      )),
                                )
                              ],
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 16),
                            width: MediaQuery.of(context).size.width / 2.5,
                            color: Colors.yellow,
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    left: 140,
                    top: 24,
                    child: Image.network(
                      "https://i.pinimg.com/originals/e5/c2/27/e5c2276a61605f6c3def9d617f5b5498.png",
                      width: 180,
                    ),
                  ),
                  Positioned(
                    left: 16,
                    top: 16,
                    child: Container(
                      height: 60,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Text(
                        "Mechanical\nCenter",
                        style: TextStyle(
                            color: sexyColor,
                            fontWeight: FontWeight.bold,
                            fontSize: 24),
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    left: 16,
                    child: Container(
                      height: 120,
                      width: MediaQuery.of(context).size.width / 2.5,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: Text(
                                "Available Size",
                                style: TextStyle(
                                  color: sexyColor.withOpacity(0.5),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Expanded(
                            flex: 1,
                            child: Row(
                              children: <Widget>[
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: sexyColor.withOpacity(0.5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "XS",
                                        style: TextStyle(color: sexyColor),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: sexyColor.withOpacity(0.5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "S",
                                        style: TextStyle(color: sexyColor),
                                      ),
                                    ),
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Container(
                                    margin: const EdgeInsets.only(right: 8),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: sexyColor.withOpacity(0.5),
                                      ),
                                    ),
                                    child: Center(
                                      child: Text(
                                        "M",
                                        style: TextStyle(color: sexyColor),
                                      ),
                                    ),
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TODO Implement spec
          SizedBox(
            height: 8,
          ),
          Expanded(
            flex: 3,
            child: Container(
              padding: const EdgeInsets.only(top: 16, left: 16),
              child: Row(
                children: <Widget>[
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "ENDURANCE",
                          style: TextStyle(
                            color: sexyColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "ERGONOMICS",
                          style: TextStyle(
                            color: sexyColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                        Text(
                          "NOISE",
                          style: TextStyle(
                            color: sexyColor,
                            fontWeight: FontWeight.w700,
                            fontSize: 16,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "60 YEARS",
                                style: TextStyle(
                                    color: sexyColor.withOpacity(0.5)),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: sexyColor.withOpacity(0.5))
                            ],
                          ),
                        ),
                        Divider(
                          color: sexyColor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "PATENT PROTECTION",
                                style: TextStyle(
                                    color: sexyColor.withOpacity(0.5)),
                              ),
                              Icon(Icons.arrow_forward_ios,
                                  size: 16, color: sexyColor.withOpacity(0.5))
                            ],
                          ),
                        ),
                        Divider(
                          color: sexyColor,
                        ),
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.end,
                            children: <Widget>[
                              Text(
                                "SILENT",
                                style: TextStyle(
                                    color: sexyColor.withOpacity(0.5)),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: sexyColor.withOpacity(0.5),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 8,
          ),
          //TODO Implement price ui
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
              padding: const EdgeInsets.symmetric(horizontal: 16),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16),
                  color: sexyColor.withOpacity(0.1)),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[

                  Text("\$", style: TextStyle(
                      color: sexyColor
                  ),),
                  SizedBox(width: 8,),
                  Text("89.99", style: TextStyle(
                      color:sexyColor,
                    fontSize: 28,
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Container(
                    height: 46,
                    width: 120,
                    decoration: BoxDecoration(
                      color: sexyColor,
                      borderRadius: BorderRadius.circular(8)
                    ),
                    child: Center(
                      child: Text("ADD TO CART",
                      style: TextStyle(
                        color: Colors.white
                      ),),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}















