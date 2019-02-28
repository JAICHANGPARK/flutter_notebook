import 'package:flutter/material.dart';

class CardStackApp extends StatelessWidget {
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
  bool flag = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.indigo,
      appBar: AppBar(
        backgroundColor: Colors.blueGrey,
        title: Text("Card Stack View"),
      ),
      body: Stack(
        alignment: Alignment.center,
        children: flag
            ? <Widget>[
                Positioned(
                  top: 20,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.purple.withOpacity(0.6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      width: 180,
                      height: 300,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.purple.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      width: 200,
                      height: 300,
                    ),
                  ),
                ),
                Positioned(
                  top: 40,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      width: 220,
                      height: 300,
                    ),
                  ),
                ),
              ]
            : <Widget>[
                Positioned(
                  top: 40,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.purple.withOpacity(0.6),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      width: 250,
                      height: 440,
                    ),
                  ),
                ),
                Positioned(
                  top: 30,
                  child: Card(
                    elevation: 8.0,
                    color: Colors.purple.withOpacity(0.8),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10.0)),
                    child: Container(
                      width: 270,
                      height: 440,
                    ),
                  ),
                ),
                Positioned(
                  top: 20,
                  child: Material(
                    elevation: 8.0,
                    color: Colors.purple,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: Container(
                      width: 290,
                      height: 440,
                      child: Stack(
                        children: <Widget>[
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.only(
                                  topRight: Radius.circular(10.0),
                                  topLeft: Radius.circular(10.0)),
                              color: Colors.white,
                            ),
                            height: 250,
                            width: 440,
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  left: -40,
                                  top: 20.0,
                                  child: Text(
                                    "29",
                                    style: TextStyle(
                                        fontSize: 140,
                                        color: Colors.indigo.withOpacity(0.2),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  top: 60.0,
                                  child: Text(
                                    "Blue Cheese",
                                    style: TextStyle(
                                        color: Colors.indigo.withOpacity(0.7),
                                        letterSpacing: 1.3),
                                  ),
                                ),
                                Positioned(
                                  left: 20.0,
                                  top: 76.0,
                                  child: Text(
                                    "\$",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 40,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.3),
                                  ),
                                ),
                                Positioned(
                                  left: 46.0,
                                  top: 68.0,
                                  child: Text(
                                    "29",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        fontSize: 60,
                                        fontWeight: FontWeight.bold,
                                        letterSpacing: 1.3),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Positioned(
                            top: 250,
                            child: Material(
                              borderRadius: BorderRadius.circular(10.0),
                              child: Container(
                                height: 240,
                                width: 440,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.only(
                                    bottomLeft: Radius.circular(30.0),
                                    bottomRight: Radius.circular(30.0),
                                  ),
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.indigoAccent
                                    ],
                                  ),
                                ),
                                child: Padding(
                                  padding: const EdgeInsets.only(
                                      left: 24.0, top: 16.0),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: <Widget>[
                                      SizedBox(
                                        height: 24.0,
                                      ),
                                      Text(
                                        "SLEEPY",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            height: 20,
                                            width: 240,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color:
                                                  Colors.pink.withOpacity(0.6),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 160,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.deepPurpleAccent,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    offset: Offset(0.0, 3.0),
                                                    spreadRadius: 0.5,
                                                    blurRadius: 1.0,
                                                  )
                                                ]),
                                          ),
                                        ],
                                      ),
                                      SizedBox(
                                        height: 16.0,
                                      ),
                                      Text(
                                        "EUPHORIC",
                                        style: TextStyle(color: Colors.white),
                                      ),
                                      SizedBox(
                                        height: 8.0,
                                      ),
                                      Stack(
                                        children: <Widget>[
                                          Container(
                                            height: 20,
                                            width: 240,
                                            decoration: BoxDecoration(
                                              borderRadius:
                                                  BorderRadius.circular(10.0),
                                              color:
                                                  Colors.pink.withOpacity(0.6),
                                            ),
                                          ),
                                          Container(
                                            height: 20,
                                            width: 200,
                                            decoration: BoxDecoration(
                                                borderRadius:
                                                    BorderRadius.circular(10.0),
                                                color: Colors.deepPurpleAccent,
                                                boxShadow: [
                                                  BoxShadow(
                                                    color: Colors.black
                                                        .withOpacity(0.3),
                                                    offset: Offset(0.0, 3.0),
                                                    spreadRadius: 0.5,
                                                    blurRadius: 1.0,
                                                  )
                                                ]),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                              top: 230,
                              left: 24.0,
                              child: Container(
                                height: 40,
                                width: 40,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(32),
                                  color: Colors.purple,
                                  boxShadow: [
                                    BoxShadow(
                                      color: Colors.black.withOpacity(0.6),
                                      offset: Offset(0.0, 1.0),
//                                  spreadRadius: 1.0,
                                      blurRadius: 1.0,
                                    ),
                                  ],
                                  gradient: LinearGradient(
                                    colors: [
                                      Colors.purple,
                                      Colors.indigoAccent
                                    ],
                                  ),
                                ),
                                child: Center(
                                  child: Icon(
                                    Icons.shopping_basket,
                                    color: Colors.white,
                                  ),
                                ),
                              )),
                        ],
                      ),
                    ),
                  ),
                ),
                Positioned(
                    top: 32,
                    right: 6.0,
                    child: Container(
                      height: 250,
                      width: 200,
                      child: Image.network(
                        "https://ya-webdesign.com/images/orange-bouquet-png-3.png",
                        fit: BoxFit.cover,
                      ),
                    )),
              ],
      ),
      bottomNavigationBar: new Theme(
        data: Theme.of(context).copyWith(
          // sets the background color of the `BottomNavigationBar`
            canvasColor: Colors.indigo,
            // sets the active color of the `BottomNavigationBar` if `Brightness` is light
            primaryColor: Colors.purple,
            textTheme: Theme
                .of(context)
                .textTheme
                .copyWith(caption: new TextStyle(color: Colors.grey))), // sets the inactive color of the `BottomNavigationBar`
        child: new BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          currentIndex: 0,
          items: [
            new BottomNavigationBarItem(
              icon: new Icon(Icons.search),
              title: new Text("Search"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.add),
              title: new Text("Add"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.lock_open),
              title: new Text("PWD"),
            ),
            new BottomNavigationBarItem(
              icon: new Icon(Icons.map),
              title: new Text("Delete"),
            )
          ],
        ),
      ),
    );
  }
}
