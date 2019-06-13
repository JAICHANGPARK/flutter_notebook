import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class NotEasy extends StatelessWidget {
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
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height / 3,
              decoration: BoxDecoration(
                color: Colors.indigo
              ),
              child: Center(
                child: Text("Insert Your GIF Assets Image here",
                style: TextStyle(color: Colors.white,
                fontSize: 48),),
              ),
            ),
            Container(
              padding: const EdgeInsets.only(left: 24, right: 24),
              height: MediaQuery.of(context).size.height / 8,
              decoration: BoxDecoration(
//                color: Colors.orange,

              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text("LINEUP", style: TextStyle(
                        color: Colors.indigo,
                        fontSize: 48,
                        fontWeight: FontWeight.bold
                      ),),
                      Container(
                        height: 40,
                        width: 140,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(48),
                          border: Border.all(
                            color: Colors.indigo,
                            width: 2,

                          ),
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Text(DateFormat.yMMMd().format(DateTime.now()),
                            style: TextStyle(
                              color: Colors.indigo
                            ),),
                            CircleAvatar(
                              radius: 12,
                              backgroundColor: Colors.grey.withOpacity(0.3),
                              child: Icon(Icons.favorite, color: Colors.red,size: 8,),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                  Text("10:00 - 23:00",style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: MediaQuery.of(context).size.height/ 2.1,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
//                color: Colors.orange
              ),
              child: Transform.translate(
                offset: Offset(-30, 0),
                child: Transform.scale(
                  scale: 1.2,
                  child: CarouselSlider(

                    height:  MediaQuery.of(context).size.height/ 2.6,

                    viewportFraction: 0.55,

                    enlargeCenterPage: true,

                    items: [1,2,3,4,5].map((i) {
                      return Builder(
                        builder: (BuildContext context) {
                          return Container(
                              width: 200,

                              margin: EdgeInsets.symmetric(horizontal: 2),
                              decoration: BoxDecoration(
                                  color: Colors.amber,
                                borderRadius: BorderRadius.circular(8),
                                boxShadow: [
                                  BoxShadow(
                                      offset: Offset(0, 5),
                                      color:
                                  Colors.black.withOpacity(0.15),
                                  spreadRadius: 5, blurRadius: 5),
                                ]
                              ),
                              child: Column(

                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Container(

                                    height: 120,
                                    decoration: BoxDecoration(
                                      color: Colors.blue,
                                      borderRadius: BorderRadius.circular(8),
                                    ),
                                    child: Center(
                                      child: Text("Insert Your Image Here"),
                                    ),

                                  ),
                                  SizedBox(height: 16,),
                                  Padding(
                                    padding: EdgeInsets.only(left: 24),
                                    child: Text("12:00",style:
                                      TextStyle(
                                        color: Colors.white
                                      ),),
                                  ),
                                  Padding(
                                    padding: EdgeInsets.only(left: 24),
                                    child: Text("ASIAN\nDRAGONS", style: TextStyle(
                                      fontSize: 34,
                                      color: Colors.white
                                    ),),
                                  ),
                                  Row(
                                    children: <Widget>[
                                      Icon(Icons.location_on,
                                      color: Colors.white,),
                                      Text("Main Stage",)
                                    ],
                                  )
                                ],
                              )
                          );
                        },
                      );
                    }).toList(),
                  ),
                ),
              ),
            )


          ],
        ),
      ),
    );
  }
}











