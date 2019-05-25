import 'package:flutter/material.dart';

const double paddingLeft = 24;

class SplitOrder extends StatelessWidget {
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
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 30,
            left: paddingLeft,
            right: 0,
            child: Align(
              alignment: Alignment.topLeft,
              child: IconButton(
                  padding: const EdgeInsets.all(0),
                  icon: Icon(
                    Icons.arrow_back_ios,
                    color: Colors.black,
                  ),
                  onPressed: () {}),
            ),
          ),
          Positioned(
            top: 100,
            left: paddingLeft,
            right: 16,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Text(
                    "Split",
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 48,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Text(
                    "order",
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 48,
                        fontFamily: 'Montserrat'),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 190,
            left: paddingLeft + 8,
            right: 16,
            child: Column(
              children: <Widget>[
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/11/21/32/food-669249_960_720.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 8,
                    ),
                    Text("x"),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Align(
                        alignment: Alignment.center,
                          child: Text(
                        "Le Pigeon Burger",
                      )),
                    ),
                    Expanded(child: Container(),),
                    Text("\$9.50", style: TextStyle(
                      color: Colors.grey
                    ),)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/11/21/32/food-669249_960_720.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 8,
                    ),
                    Text("x"),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Le Pigeon Burger",
                          )),
                    ),
                    Expanded(child: Container(),),
                    Text("\$9.50", style: TextStyle(
                        color: Colors.grey
                    ),)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/11/21/32/food-669249_960_720.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 8,
                    ),
                    Text("x"),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Le Pigeon Burger",
                          )),
                    ),
                    Expanded(child: Container(),),
                    Text("\$9.50", style: TextStyle(
                        color: Colors.grey
                    ),)
                  ],
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 40,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.grey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage("https://cdn.pixabay.com/photo/2015/03/11/21/32/food-669249_960_720.jpg")),
                      ),
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Text("1"),
                    SizedBox(
                      width: 8,
                    ),
                    Text("x"),
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 80,
                      width: 100,
                      child: Align(
                          alignment: Alignment.center,
                          child: Text(
                            "Le Pigeon Burger",
                          )),
                    ),
                    Expanded(child: Container(),),
                    Text("\$9.50", style: TextStyle(
                        color: Colors.grey
                    ),)
                  ],
                )
              ],
            ),
          ),
          Positioned(
            left: paddingLeft + 8,
            right: 0,
            top: 520,
            child: SingleChildScrollView(
              scrollDirection: Axis.vertical,
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                color: Colors.red,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 300,
                      width: 100,
                      decoration: BoxDecoration(
                        color: Colors.black,
                        borderRadius: BorderRadius.circular(17),
                      ),
                      child: Column(
                        children: <Widget>[
                          CircleAvatar(
                            child: Image.network(""),
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),

          )
        ],
      ),
    );
  }
}













