import 'package:flutter/material.dart';

class RealEstateBookingApp extends StatelessWidget {
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
      backgroundColor: Colors.white,
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          //TODO Implement Top Bar
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Discover",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  IconButton(
                    icon: Icon(Icons.apps),
                    onPressed: () {},
                  )
                ],
              ),
            ),
          ),
          //TODO Implement SearchBar
          Expanded(
            flex: 1,
            child: Container(
              margin: const EdgeInsets.all(8),
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  color: Colors.grey.withOpacity(0.2)),
              child: TextField(
                decoration: InputDecoration(
                    border: InputBorder.none,
                    prefixIcon: Icon(Icons.search),
                    hintText: "Search your location"),
              ),
            ),
          ),
          //TODO Implement Location GridView
          Expanded(
            flex: 8,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: GridView.count(
                crossAxisCount: 3,
                childAspectRatio: 0.6,
                crossAxisSpacing: 8,
                mainAxisSpacing: 8,
                children: <Widget>[
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Container(
                          height: 140,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              image: DecorationImage(
                                  image: NetworkImage(
                                      "https://cdn.pixabay.com/photo/2017/11/21/22/10/desert-2969368__340.jpg"),
                                  fit: BoxFit.cover)),
                        ),
                        SizedBox(
                          height: 4,
                        ),
                        Text("Resorts"),
                        SizedBox(
                          height: 4,
                        ),
                        Text("650+ Resorts")
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          //TODO Implement Feature Bar
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Featured",
                    style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    "View all >",
                    style: TextStyle(color: Colors.grey),
                  )
                ],
              ),
            ),
          ),
          //TODO Implement Card
          Expanded(
            flex: 2,
            child: Container(
              margin:
                  const EdgeInsets.only(top: 8, left: 16, right: 16, bottom: 8),
              padding: const EdgeInsets.symmetric(horizontal: 8),
              decoration: BoxDecoration(
//                  border: Border.all(),
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.black.withOpacity(0.14),
                        blurRadius: 3,
                        spreadRadius: 3)
                  ]),
              child: Row(
                children: <Widget>[
                  Container(
                    margin: const EdgeInsets.symmetric(vertical: 4, horizontal: 8),
                    height: double.infinity,
                    width: 72,
                    decoration: BoxDecoration(
                        color: Colors.blueGrey,
                        borderRadius: BorderRadius.circular(8),
                        image: DecorationImage(
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2013/02/21/19/08/beach-84598__340.jpg"),
                            fit: BoxFit.cover)),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Arabian Resort",
                        style: TextStyle(color: Colors.black, fontSize: 21),
                      ),
                      Text("AI Thumamah, Riyadh"),
                      SizedBox(
                        height: 8,
                      ),
                      Row(
                        children: <Widget>[
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          ),
                          Icon(
                            Icons.star,
                            color: Colors.yellow,
                          )
                        ],
                      )
                    ],
                  ),
                  Expanded(
                    child: Container(),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16, right: 8),
                    child: Align(
                      child: Text(
                        "\$250",
                        style: TextStyle(fontWeight: FontWeight.w700),
                      ),
                      alignment: Alignment.topCenter,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
