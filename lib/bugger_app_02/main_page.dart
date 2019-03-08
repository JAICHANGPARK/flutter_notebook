import 'package:flutter/material.dart';
import 'package:flutter_notebook/bugger_app_02/home_page.dart';

class MyBuggerApp2 extends StatelessWidget {
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
            top: 0,
            left: 0,
            child: Container(
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2015/07/30/18/23/burger-868145_960_720.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 40,
            left: 16.0,
            child: Container(
              height: 60.0,
              width: MediaQuery.of(context).size.width,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: <Widget>[
                      CircleAvatar(
                        child: Icon(
                          Icons.share,
                          color: Colors.grey,
                        ),
                        backgroundColor: Colors.white,
                      ),
                      SizedBox(
                        width: 8.0,
                      ),
                      CircleAvatar(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.grey,
                        ),
                        backgroundColor: Colors.white,
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(16),
                    child: IconButton(
                      onPressed: () {
                        Navigator.of(context).push(
                          MaterialPageRoute(builder: (context)=> HomePage())
                        );
                      },
                      iconSize: 30.0,
                      icon: Icon(
                        Icons.arrow_forward,
                        color: Colors.white,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2 - 30,
            child: Container(
              height: MediaQuery.of(context).size.height / 2 -30,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20.0),
                    topRight: Radius.circular(20.0),
                  ),
                  color: Colors.white),
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Dreamwalker Burger",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Montserrat',
                          fontSize: 24.0,
                          fontWeight: FontWeight.bold,
                          color: Colors.black),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text("(23)"),
                        Row(
                          children: <Widget>[
                            Icon(Icons.star_border),
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
                          ],
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Text(
                          "Util 23",
                          style: TextStyle(color: Colors.grey),
                        ),
                        SizedBox(
                          width: 4.0,
                        ),
                        Icon(
                          Icons.access_time,
                          color: Colors.grey,
                          size: 18,
                        )
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 24.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Lorem ipsum dolor sit amet, consectetur adipisicing elit, "
                          "sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, "
                          "quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat.",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontFamily: 'Montserrat', color: Colors.grey),
                    ),
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Text(
                      "Recipes",
                      textAlign: TextAlign.right,
                      style: TextStyle(
                          fontSize: 24.0,
                          color: Colors.black,
                          fontFamily: 'Montserrat',
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(right: 16.0),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: <Widget>[
                        Text(
                          "lettuce 3",
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          "Beef 6",
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          "Cheeeeeese 6",
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          "Tomatos 2",
                          textAlign: TextAlign.right,
                        ),
                        SizedBox(height: 8.0,),
                        Text(
                          "Bread 2",
                          textAlign: TextAlign.right,
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),

          Positioned(
            left: 16.0,
            bottom: 8.0,
            child: InkWell(
              onTap: (){},
              child: Container(
                height: 50.0,
                width: MediaQuery.of(context).size.width - 30,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(4.0),
                  color: Colors.deepOrange
                ),
                child: Center(
                  child: Text("Save", style: TextStyle(
                    color: Colors.white,
                    fontSize: 24.0,
                    fontWeight: FontWeight.bold,
                  ),),
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}













