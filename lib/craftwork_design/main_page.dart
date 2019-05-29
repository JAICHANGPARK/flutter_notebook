import 'package:flutter/material.dart';

class CraftWorkDesign extends StatelessWidget {
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
      backgroundColor: Colors.black,
      body: ListView(
        children: <Widget>[
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
//              color: Colors.red
                ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "New",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 34,
                      letterSpacing: 1.8),
                ),
                CircleAvatar(
                  backgroundColor: Colors.deepPurpleAccent,
                  child: IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.ac_unit),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.all(24),
            height: MediaQuery.of(context).size.height / 2,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              color: Colors.indigo,
              borderRadius: BorderRadius.circular(16),
            ),
            child: Stack(
              children: <Widget>[
                Positioned(
                  left: 24,
                  bottom: 24,
                  child: Text(
                    "Struct illustrations",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 28,
                        fontWeight: FontWeight.bold,
                        letterSpacing: 1.2),
                  ),
                )
              ],
            ),
          ),
          Container(
            margin: EdgeInsets.only(left: 24),
            padding: EdgeInsets.only(top: 8, bottom: 8),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
//                color: Colors.red,
            ),
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                    color: Colors.deepPurpleAccent,
                    borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child:Text("UX/UI Systems",
                    style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      
                    ),),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child:Text("UX/UI Systems",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child:Text("UX/UI Systems",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),),
                  ),
                ),
                SizedBox(width: 16,),
                Container(
                  padding: const EdgeInsets.all(8),
                  decoration: BoxDecoration(
                      color: Colors.deepPurpleAccent,
                      borderRadius: BorderRadius.circular(30)
                  ),
                  child: Center(
                    child:Text("UX/UI Systems",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,

                      ),),
                  ),
                ),


              ],
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(horizontal: 24),
            height: MediaQuery.of(context).size.height / 12,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration
              (
//              color: Colors.blue,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text("Popular", style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 28,
                  letterSpacing: 1.5
                ),),
                IconButton(
                  onPressed: (){},
                  icon: Icon(Icons.more_horiz, size: 40,color: Colors.white,),
                )
              ],
            ),
          ),
          Container(
            padding: EdgeInsets.all(16),
            height: MediaQuery.of(context).size.height / 1.5,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
//                color: Colors.yellow,
            ),
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                            color: Colors.deepPurpleAccent,
                            borderRadius: BorderRadius.circular(16),
                            border: Border(
                              top: BorderSide(color: Colors.black),
                              bottom: BorderSide(color: Colors.black),
                              left: BorderSide(color: Colors.black),
                              right: BorderSide(color: Colors.black)
                            )
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                Expanded(
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.pinkAccent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(
                              color: Colors.deepPurpleAccent,
                              borderRadius: BorderRadius.circular(16),
                              border: Border(
                                  top: BorderSide(color: Colors.black),
                                  bottom: BorderSide(color: Colors.black),
                                  left: BorderSide(color: Colors.black),
                                  right: BorderSide(color: Colors.black)
                              )
                          ),
                        ),
                      )
                    ],
                  ),
                ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}



























