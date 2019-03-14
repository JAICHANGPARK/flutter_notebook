import 'package:flutter/material.dart';

class SectionPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Page(),
    );
  }
}

class Page extends StatefulWidget {
  @override
  _PageState createState() => _PageState();
}

class _PageState extends State<Page> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0.0,
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.4), BlendMode.darken),
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2016/01/19/16/56/cooking-utensils-1149464_960_720.jpg"),
                      fit: BoxFit.cover)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 48.0),
                    child: Text(
                      "Selection of light food",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontFamily: 'Montserrat'),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.white,
                            size: 18,
                          ),
                          Icon(Icons.star, color: Colors.white, size: 18),
                          Icon(Icons.star, color: Colors.white, size: 18),
                          Icon(Icons.star, color: Colors.white, size: 18),
                          Icon(Icons.star_border,
                              color: Colors.white, size: 18),
                        ],
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      Text(
                        "999 People score",
                        style: TextStyle(color: Colors.white, fontSize: 14.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          ),

          Positioned(
            top: 40,
            left: 16.0,
            right: 16.0,
            child: Container(
              height: 50,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.arrow_back_ios,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
          ),

          Positioned(
            top: 250,
            left: 16.0,
            right: 16.0,
            child: Container(
              height: MediaQuery.of(context).size.height - 250,
              width: double.infinity,

              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            "assets/img/food_app_01.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Lemon chicken",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0),
                            ),

                            SizedBox(height: 8.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star_border, color: Colors.grey,size: 18.0,),
                                SizedBox(width: 8.0,),
                                Text("8.6", style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 16.0
                                ),)
                              ],
                            ),
                            SizedBox(height: 8.0,),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(17.0),
                                border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Text("BOOK", style: TextStyle(
                                  color: Colors.grey
                                ),),
                              ),
                            )
                            
                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 120,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            "assets/img/food_app_01.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Avocado chicken chops",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0),
                            ),

                            SizedBox(height: 8.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star_border, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star_border, color: Colors.grey,size: 18.0,),
                                SizedBox(width: 8.0,),
                                Text("7.6", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0
                                ),)
                              ],
                            ),
                            SizedBox(height: 8.0,),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Text("BOOK", style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 120,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            "assets/img/food_app_01.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Chicken salad",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0),
                            ),

                            SizedBox(height: 8.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star_border, color: Colors.grey,size: 18.0,),
                                SizedBox(width: 8.0,),
                                Text("8.7", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0
                                ),)
                              ],
                            ),
                            SizedBox(height: 8.0,),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Text("BOOK", style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  ),

                  Container(
                    height: 120,
                    width: double.infinity,
                    child: Row(
                      children: <Widget>[
                        Container(
                          height: 110,
                          width: 110,
                          child: Image.asset(
                            "assets/img/food_app_01.png",
                            fit: BoxFit.cover,
                          ),
                        ),
                        SizedBox(
                          width: 16.0,
                        ),
                        Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            SizedBox(
                              height: 16.0,
                            ),
                            Text(
                              "Lean meat salad",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat',
                                  fontSize: 18.0),
                            ),

                            SizedBox(height: 8.0,),
                            Row(
                              children: <Widget>[
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star, color: Colors.grey,size: 18.0,),
                                Icon(Icons.star_border, color: Colors.grey,size: 18.0,),
                                SizedBox(width: 8.0,),
                                Text("8.8", style: TextStyle(
                                    color: Colors.grey,
                                    fontSize: 16.0
                                ),)
                              ],
                            ),
                            SizedBox(height: 8.0,),
                            Container(
                              height: 25,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Text("BOOK", style: TextStyle(
                                    color: Colors.grey
                                ),),
                              ),
                            )

                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

//          Positioned(
//            top: 250,
//            left: 16.0,
//            right: 16.0,
//            child: Container(
//              color: Colors.red,
//              height:300,
//              width: MediaQuery.of(context).size.width,
//              child: ListView(
//                shrinkWrap: true,
//                scrollDirection: Axis.vertical,
//                children: <Widget>[
//                  Container(
//                    height: 100,
//                    width: double.infinity,
//                    child: Row(
//                      children: <Widget>[
//                        Container(
//                          height: 80,
//                          width: 80,
////                          decoration: BoxDecoration(
////                            image: DecorationImage(image:
////                            AssetImage("assets/img/food_app_01.png"),
////                            fit: BoxFit.cover)
////                          ),
//                          child: Image.asset("assets/img/food_app_01.png", fit: BoxFit.cover,),
//                        ),
//                        Column(
//                          children: <Widget>[
//                            Text("Lemon chicken"),
//
//                          ],
//                        )
//                      ],
//                    ),
//                  )
//                ],
//              ),
//            ),
//          ),
        ],
      ),
    );
  }
}
