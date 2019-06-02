import 'package:flutter/material.dart';

class ApartmentFinder extends StatelessWidget {
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
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        decoration: BoxDecoration(color: Colors.blueGrey),
        child: Stack(
          children: <Widget>[
            Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Container(
                height: MediaQuery.of(context).size.height / 1.7,
                decoration: BoxDecoration(
                  color: Colors.red,
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned(
                      top: 70,
                      left: 16,
                      right: 16,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          IconButton(
                            icon: Icon(
                              Icons.arrow_back,
                              color: Colors.white,
                              size: 32,
                            ),
                            onPressed: () {},
                          ),
                          IconButton(
                            icon: Icon(Icons.more_vert,
                                color: Colors.white, size: 32),
                            onPressed: () {},
                          ),
                        ],
                      ),
                    ),
                    Positioned(
                      bottom: 90,
                      left: 0,
                      right: 0,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                color: Colors.grey.withOpacity(0.6)),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            height: 10,
                            width: 10,
                            decoration: BoxDecoration(
                                shape: BoxShape.circle, color: Colors.white),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            Positioned(
              left: 0,
              right: 0,
              top: MediaQuery.of(context).size.height / 2,
              child: Container(
                padding: const EdgeInsets.only(left: 32, right: 16, bottom: 24),
                height: MediaQuery.of(context).size.height / 4,
                decoration: BoxDecoration(
                  color: Colors.purple,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                  ),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "\$1,700",
                          style: TextStyle(
                            fontSize: 42,
                            color: Colors.white,
                          ),
                        ),
                        Text(
                          "\$642 William St.",
                          style: TextStyle(
                            fontSize: 24,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        IconButton(
                          icon: Icon(Icons.share,
                            color: Colors.white,),
                          onPressed: (){},
                        ),
                        IconButton(
                          icon: Icon(Icons.favorite_border,
                            color: Colors.white,),
                          onPressed: (){},
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),

            Positioned(
              left: 0,
              right: 0,
              top: (MediaQuery.of(context).size.height / 2) +
                  (MediaQuery.of(context).size.height / 5),
              child: Container(
                height: MediaQuery.of(context).size.height / 2,
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(38),
                  ),
                ),
              ),
            ),
          ],
        ),
//        child: Column(
//          children: <Widget>[
//            //TODO Top UI
//            Expanded(
//              flex: 7,
//              child: Container(
//                decoration: BoxDecoration(color: Colors.red),
//              ),
//            ),
//            //TODO Implement Mid UI
//            Expanded(
//              flex: 3,
//              child: Container(
//                decoration: BoxDecoration(
//                    color: Colors.orange,
//                    borderRadius:
//                        BorderRadius.only(topLeft: Radius.circular(30))),
//              ),
//            ),
//            //TODO Implement Bottom UI
//            Expanded(
//              flex: 5,
//              child: Container(
//                decoration: BoxDecoration(
//                    color: Colors.yellow,
//                    borderRadius:
//                        BorderRadius.only(topLeft: Radius.circular(30))),
//              ),
//            ),
//          ],
//        ),
      ),
    );
  }
}
