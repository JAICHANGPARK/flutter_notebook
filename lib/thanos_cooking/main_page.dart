
import 'package:flutter/material.dart';

class ThanosCooking extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Titan(),
    );
  }
}
class Titan extends StatefulWidget {
  @override
  _TitanState createState() => _TitanState();
}

class _TitanState extends State<Titan> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black87),
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.add),
            onPressed: (){},
          ),
          IconButton(
            icon: Icon(Icons.notifications_none),
            onPressed: (){},
          ),
        ],

      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
//                color: Colors.red
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
//                        color: Colors.deepPurpleAccent,
                      ),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 72,
                            width: 72,
                            decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Thanos\nRestaurant", style: TextStyle(
                                color: Colors.black,
                                fontSize: 24,
                                fontWeight: FontWeight.bold,
                              ),),
                              Text("I am inevitable")
                            ],
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(
//                        color: Colors.pink,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("392K",style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 34,
                                  fontWeight: FontWeight.bold,
                                  fontFamily: 'Montserrat'
                                ),),
                                Text("Followers", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Montserrat'
                                ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),),
                                Text("Following", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Montserrat'
                                ),)
                              ],
                            ),
                          ),
                          Expanded(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text("1024",style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 34,
                                    fontWeight: FontWeight.bold,
                                    fontFamily: 'Montserrat'
                                ),),
                                Text("Dishes", style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 18,
                                    fontFamily: 'Montserrat'
                                ),)
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              margin: const EdgeInsets.only(top: 8),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius:BorderRadius.only(
                  topLeft: Radius.circular(30),
                  topRight: Radius.circular(30)
                ),
                boxShadow: [
                  BoxShadow(color: Colors.black.withOpacity(0.4),
                  blurRadius: 8,
                  spreadRadius: 0,
                  offset: Offset(0, -2))
                ]
              ),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex:2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24,
                      vertical: 8),
                      decoration: BoxDecoration(
//                        color: Colors.red,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Star Dishes",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                          Text("1/6",style: TextStyle(
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),)
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:7,
                    child: Container(
                      decoration: BoxDecoration(
//                        color: Colors.orange,
                      ),
                      child: ListView(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.all(8),
                            height: double.infinity,
                            width: 120,
                            decoration: BoxDecoration(
                              color: Colors.red,
                              borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: double.infinity,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: double.infinity,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: double.infinity,
                            width: 120,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(16)
                            ),
                          ),

                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:2,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 24),
                      decoration: BoxDecoration(

                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Hot Vegetables",
                          style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                          Container(
                            margin: EdgeInsets.all(8),
                            height: double.infinity,
                            width: 80,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(30),
                              boxShadow: [
                                BoxShadow(color: Colors.black.withOpacity(0.2),
                                blurRadius: 10,
                                spreadRadius: 10,
                                offset: Offset(5, 5)),
                              ]
                            ),
                            child: Center(
                              child: Text("BUY",style: TextStyle(
                                color: Colors.deepPurpleAccent,
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                              ),),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                    flex:4,
                    child: Container(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
//                        color: Colors.green,
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 70,
                            width: 70,
                            decoration: BoxDecoration(
                              color: Colors.greenAccent,
                              borderRadius: BorderRadius.circular(16)
                            ),
                          ),
                          SizedBox(width: 16,),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Titan Star Banana", style: TextStyle(
                                fontSize: 18,
                              ),),
                              Row(

                                children: <Widget>[
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Icon(Icons.star, color: Colors.yellow,),
                                  Icon(Icons.star, color: Colors.yellow,)
                                ],
                              )
                            ],
                          )
                        ],
                      ),
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


















