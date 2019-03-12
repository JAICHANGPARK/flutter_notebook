import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_notebook/food_app_01/main_page.dart';

class DetailPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Detail(),
    );
  }
}

class Detail extends StatefulWidget {
  @override
  _DetailState createState() => _DetailState();
}

class _DetailState extends State<Detail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.height,
            decoration: BoxDecoration(
                image: DecorationImage(
                    colorFilter: ColorFilter.mode(
                        Colors.black.withOpacity(0.5), BlendMode.darken),
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/02/15/10/38/background-2068211_960_720.jpg"),
                    fit: BoxFit.cover)),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 200,
            left: 24.0,
            right: 24.0,
            child: ClipRect(
              child: BackdropFilter(
                filter: ImageFilter.blur(sigmaX: 10.0, sigmaY: 10.0),
                child: Container(
                  height: 520,
                  width: 200,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      color: Colors.grey.shade200.withOpacity(0.3)),
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(
                            right: 24.0, left: 24.0, top: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Text(
                              "Garden salad",
                              style: TextStyle(
                                  color: Colors.white,
                                  letterSpacing: 1.2,
                                  fontWeight: FontWeight.bold,
                                  fontSize: 20.0,
                                  fontFamily: 'Montserrat'),
                            ),
                            IconButton(
                              onPressed: () {},
                              icon: Icon(
                                Icons.favorite,
                                color: Colors.white,
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Row(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star,
                                  color: Colors.white,
                                ),
                                Icon(
                                  Icons.star_border,
                                  color: Colors.white,
                                )
                              ],
                            ),
                            SizedBox(
                              width: 4.0,
                            ),
                            Text(
                              "897 People score",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 14.0),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 16.0),
                        child: Row(
                          children: <Widget>[
                            Container(
                              height: 30,
                              width: 140.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.black.withOpacity(0.3)),
                              child: Center(
                                child: Text(
                                  "Light food cooking",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 30,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.black.withOpacity(0.3)),
                              child: Center(
                                child: Text(
                                  "Daily",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 8.0,
                            ),
                            Container(
                              height: 30,
                              width: 50.0,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(7.0),
                                  color: Colors.black.withOpacity(0.3)),
                              child: Center(
                                child: Text(
                                  "Salad",
                                  style: TextStyle(color: Colors.grey),
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(
                            left: 24.0, top: 16.0, right: 24.0),
                        child: Container(
                          height: 100,
                          width: double.infinity,
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                                "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. "
                                "Ut enim ad minim veniam, "
                                "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea co",
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 12.0,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 12.0),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Column(
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Text(
                                  "Avocado 0.5kg",
                                  style: TextStyle(color: Colors.white),
                                ),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Text("Cauliflower 0.5kg",
                                    style: TextStyle(color: Colors.white))
                              ],
                            ),
                            SizedBox(
                              height: 4.0,
                            ),
                            Row(
                              children: <Widget>[
                                Text("Purple potato 0.5kg",
                                    style: TextStyle(color: Colors.white)),
                                SizedBox(
                                  width: 16.0,
                                ),
                                Text("Broccoli 0.5kg",
                                    style: TextStyle(color: Colors.white))
                              ],
                            )
                          ],
                        ),
                      ),

                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 18.0, right: 24.0),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Container(
                              height: 60,
                              width: 80.0,
                              decoration: BoxDecoration(
                                color: Colors.transparent,
                                borderRadius: BorderRadius.circular(8.0),
                                border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: <Widget>[

                                    Padding(
                                      padding: const EdgeInsets.only(left: 10.0),
                                      child: Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("180",
                                          style: TextStyle(
                                            color: Colors.grey
                                          ),),
                                          Icon(Icons.add, color: Colors.grey,
                                          size: 12,)
                                        ],
                                      ),
                                    ),
                                    Text("Calories",
                                      style: TextStyle(
                                          color: Colors.grey
                                      ),)
                                  ],
                                ),
                              ),
                            ),
                            Container(
                              height: 60,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("54",
                                            style: TextStyle(
                                                color: Colors.grey
                                            ),),
                                          Icon(Icons.add, color: Colors.grey,
                                            size: 12,)
                                        ],
                                      ),
                                      SizedBox(height: 4.0,),
                                      Text("Carbon",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(
                                            color: Colors.grey
                                        ),)
                                    ],
                                  ),
                                ),
                              ),

                            ),
                            Container(
                              height: 60,
                              width: 80.0,
                              decoration: BoxDecoration(
                                  color: Colors.transparent,
                                  borderRadius: BorderRadius.circular(8.0),
                                  border: Border.all(color: Colors.grey)
                              ),
                              child: Center(
                                child: Padding(
                                  padding: const EdgeInsets.all(10.0),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Row(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        children: <Widget>[
                                          Text("101",
                                            style: TextStyle(
                                                color: Colors.grey
                                            ),),
                                          Icon(Icons.add, color: Colors.grey,
                                            size: 12,)
                                        ],
                                      ),
                                      SizedBox(height: 4.0,),
                                      Text("Fat",
                                        textAlign: TextAlign.start,
                                        style: TextStyle(

                                            color: Colors.grey
                                        ),)
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 16.0,),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 24.0),
                        child: Container(
                          height: 50,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            color: Colors.black,
                            borderRadius: BorderRadius.circular(8.0)
                          ),
                          child: Center(
                            child: Text("Add my cook book",
                            style: TextStyle(
                              color: Colors.white,
                              fontFamily: 'Montserrat',
                              fontSize: 18.0
                            ),),
                          ),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0, top: 24.0, right: 24.0),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Row(
                              children: <Widget>[
                                Icon(Icons.favorite,
                                color: Colors.white,),
                                SizedBox(width: 4.0,),
                                Text("435",style: TextStyle(
                                  color: Colors.white
                                ),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.message,
                                  color: Colors.white,),
                                SizedBox(width: 4.0,),
                                Text("521",style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.share,
                                  color: Colors.white,),
                                SizedBox(width: 4.0,),
                                Text("488",style: TextStyle(
                                    color: Colors.white
                                ),)
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          Positioned(
            top: 50,
            right: 24.0,
            child: IconButton(icon:
            Icon(Icons.clear,
              color: Colors.white,), onPressed: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>UserRequestFoodApp())
              );
            }),

          )
        ],
      ),
    );
  }
}
