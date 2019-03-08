import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            child: Container(
              height: 140.0,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Colors.deepOrange,
              ),
              child: Padding(
                padding: const EdgeInsets.only(top: 70, right: 16.0),
                child: Text(
                  "Home",
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 24.0,
                      fontWeight: FontWeight.bold,
                      fontFamily: 'Montserrat'),
                ),
              ),
            ),
          ),
          Positioned(
            top: 120,
            left: 16.0,
            child: Container(
              height: 45.0,
              width: MediaQuery.of(context).size.width - 32,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(
                    color: Colors.black.withOpacity(0.3),
                    blurRadius: 1.0,
                    spreadRadius: 1.0)
              ], borderRadius: BorderRadius.circular(4.0), color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  Text("You like?"),
                  SizedBox(
                    width: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Icon(
                      Icons.search,
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 200,
            child: Container(
              height: MediaQuery.of(context).size.height - 200,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(color: Colors.white),
              child: Padding(
                padding: const EdgeInsets.only(right: 16.0),
                child: ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Text(
                      "Food Porn",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 24.0,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Container(
                      height: 120,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              children: <Widget>[
                                Container(
                                  height: 80.0,
                                  width: 80.0,
                                  decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(8.0),
                                      image: DecorationImage(
                                          image: NetworkImage(
                                              "https://cdn.pixabay.com/photo/2019/01/21/12/47/burger-3946012_960_720.jpg"),
                                          fit: BoxFit.cover)),
                                ),
                                SizedBox(
                                  height: 4.0,
                                ),
                                Text("Sample1")
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Detail"),
                          Text(
                            "Today's FoodPorn",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 24.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 180,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2015/12/08/00/26/food-1081707_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Detail"),
                          Text(
                            "Recommend",
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.bold,
                                fontFamily: 'Montserrat',
                                fontSize: 24.0),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 160,
                      width: double.infinity,
                      child: ListView(
                        scrollDirection: Axis.horizontal,
                        children: <Widget>[
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          ),
                          SizedBox(
                            width: 8.0,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.end,
                            crossAxisAlignment: CrossAxisAlignment.end,
                            children: <Widget>[
                              Container(
                                height: 120,
                                width: 140,
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(8.0),
                                    image: DecorationImage(
                                        image: NetworkImage(
                                            "https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg"),
                                        fit: BoxFit.cover)),
                              ),
                              SizedBox(
                                height: 4.0,
                              ),
                              Text(
                                "Dreamwalker Burger",
                                textAlign: TextAlign.end,
                                style: TextStyle(
                                    color: Colors.black,
                                    fontFamily: 'Montserrat',
                                    fontWeight: FontWeight.bold),
                              ),
                              Text(
                                "cheeeeese",
                                textAlign: TextAlign.right,
                              )
                            ],
                          )
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          fixedColor: Colors.grey,
          currentIndex: 2,
          items: [
            BottomNavigationBarItem(
              icon: Icon(
                Icons.person_outline,
                color: Colors.grey,
              ),
              title: Text(
                "Profile",
                style: TextStyle(color: Colors.black),
              ),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.restaurant,
                color: Colors.grey,
              ),
              title: Text("shop", style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.search,
                color: Colors.grey,
              ),
              title: Text("search", style: TextStyle(color: Colors.black)),
            ),
            BottomNavigationBarItem(
              icon: Icon(
                Icons.home,
                color: Colors.orange,
              ),
              title: Text("Home", style: TextStyle(color: Colors.black)),
            ),
          ]),
    );
  }
}
