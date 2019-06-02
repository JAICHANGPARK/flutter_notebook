import 'package:flutter/material.dart';

class FoodApplicationDesign extends StatelessWidget {
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
      body: Stack(children: <Widget>[
        Positioned(
          left: 0,
          top: 0,
          bottom: 0,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: 80,
            decoration: BoxDecoration(
              color: Colors.grey[200],
            ),
          ),
        ),
        Positioned(
          left: 16,
          right: 16,
          top: 60,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              IconButton(
                icon: Icon(Icons.menu),
                iconSize: 30,
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.search),
                iconSize: 30,
                onPressed: () {},
              ),
            ],
          ),
        ),
        Positioned(
          left: 32,
          top: 130,
          child: Text(
            "Top Menu",
            style: TextStyle(
                color: Colors.black,
                fontSize: 30,
                fontWeight: FontWeight.bold,
                letterSpacing: 1.5,
                fontFamily: 'Montserrat'),
          ),
        ),
        Positioned(
          left: 32,
          top: 210,
          child: Container(
            height: 340,
            width: 260,
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(20),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_960_720.jpg"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 340,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20),
                        gradient: LinearGradient(
                            begin: Alignment.bottomCenter,
                            end: Alignment.topCenter,
                            colors: [
                              Colors.black.withOpacity(0.5),
                              Colors.black.withOpacity(0.3),
                              Colors.grey.withOpacity(0.2),
                              Colors.transparent
                            ],
                            tileMode: TileMode.mirror)),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Transform.translate(
                    offset: Offset(16, 16),
                    child: Container(
                      height: 80,
                      width: 80,
                      decoration: BoxDecoration(
                          color: Colors.pink,
                          borderRadius: BorderRadius.circular(20)),
                      child: Center(
                        child: Text(
                          "\$30",
                          style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                              fontFamily: 'Montserrat'),
                        ),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 50,
                  left: 24,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "Burger",
                        style: TextStyle(
                            fontSize: 24,
                            color: Colors.pinkAccent,
                            letterSpacing: 1.2),
                      ),
                      SizedBox(
                        height: 16,
                      ),
                      Text(
                        "Beef",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            letterSpacing: 1.2),
                      ),
                      Text(
                        "Cheese",
                        style: TextStyle(
                            fontSize: 34,
                            color: Colors.white,
                            letterSpacing: 1.2),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
        Positioned(
          right: 0,
          top: 290,
          child: Container(
            height: 260,
            width: 90,
            decoration: BoxDecoration(
                color: Colors.red,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    bottomLeft: Radius.circular(20)),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2019/01/29/18/05/burger-3962997_960_720.jpg"),
                    fit: BoxFit.fitHeight)),
          ),
        ),
        Positioned(
          bottom: 0,
          left: 32,
          child: Container(
            height: 120,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: <Widget>[
                FloatingActionButton(
                  backgroundColor: Colors.white,
                  child: Icon(Icons.shopping_basket),
                  foregroundColor: Colors.black, onPressed: () {},
                ),
                SizedBox(width: 32,),
                Align(child: Text("Burger",
                style: TextStyle(
                  fontSize: 20,
                  letterSpacing: 1.21
                ),),alignment: Alignment.center,
                ),
                SizedBox(width: 32,),
                Align(child: Text("Pizza",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.21,
                    color: Colors.grey
                  ),),alignment: Alignment.center,
                ),
                SizedBox(width: 32,),
                Align(child: Text("French fry",
                  style: TextStyle(
                      fontSize: 20,
                      letterSpacing: 1.21,
                      color: Colors.grey
                  ),),alignment: Alignment.center,
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}



















