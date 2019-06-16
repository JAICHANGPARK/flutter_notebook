


import 'package:flutter/material.dart';

class LuxuryShoppingApp extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            SizedBox(height: 32,),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("Today Auction", style: TextStyle(
                  color: Colors.grey,
                  fontSize: 24,
                  letterSpacing: 1.2
                ),),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              height: 210,
              margin: const EdgeInsets.only(left: 16),
              decoration: BoxDecoration(
//                border: Border.all()
                image: DecorationImage(image: NetworkImage(""
                    "https://cdn.pixabay.com/photo/2017/08/06/17/13/diamond-2594307_960_720.jpg"),
                fit: BoxFit.cover)
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 16, top: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Text("American Rare Jewels", style: TextStyle(
                    color: Colors.black,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.3,
                  ),),
                  SizedBox(height: 16,),
                  Row(
                    children: <Widget>[
                      Icon(Icons.timer, size: 24,),
                      SizedBox(width: 8,),
                      Text("46:16:38"),
                      SizedBox(width: 24,),
                      Text("\$130,000"),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Divider(
                    height: 32,
                    color: Colors.grey,
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Featured auctions", style: TextStyle(
                    color: Colors.grey,
                    fontWeight: FontWeight.bold,
                    fontSize: 24
                  ),),
                  FlatButton(
                    onPressed: (){},
                    child: Text("See more".toUpperCase(),
                    style: TextStyle(
                      color: Colors.orange
                    ),),
                  )
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 16),
              height: 200,
              child: ListView(
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                     color: Colors.white,
                      boxShadow: [
                        BoxShadow(
                          color: Colors.black.withOpacity(0.2),
                          blurRadius: 10,
                          spreadRadius: 10
                        )
                      ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                          decoration: BoxDecoration(
                            image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/18/19/06/time-3091031_960_720.jpg"),
                            fit: BoxFit.cover),

                          ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("American Jewls"),
                                SizedBox(height: 4,),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.timer),
                                    Text("2:25:47")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              spreadRadius: 10
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/18/19/06/time-3091031_960_720.jpg"),
                                  fit: BoxFit.cover),

                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("American Jewls"),
                                SizedBox(height: 4,),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.timer),
                                    Text("2:25:47")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 200,
                    width: 160,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        boxShadow: [
                          BoxShadow(
                              color: Colors.black.withOpacity(0.2),
                              blurRadius: 10,
                              spreadRadius: 10
                          )
                        ]
                    ),
                    child: Column(
                      children: <Widget>[
                        Expanded(
                          flex: 4,
                          child: Container(
                            decoration: BoxDecoration(
                              image: DecorationImage(image: NetworkImage("https://cdn.pixabay.com/photo/2018/01/18/19/06/time-3091031_960_720.jpg"),
                                  fit: BoxFit.cover),

                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("American Jewls"),
                                SizedBox(height: 4,),
                                Row(
                                  children: <Widget>[
                                    Icon(Icons.timer),
                                    Text("2:25:47")
                                  ],
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}




















