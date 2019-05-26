import 'package:flutter/material.dart';

class JuiceStoreApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => MainPage(),
      },
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
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 40,
              width: 40,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                      fit: BoxFit.cover)),
            ),
          )
//          CircleAvatar(
//            backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4")
//            ,
//            radius: 30,
//          )
        ],
      ),
      drawer: Drawer(
        child: Column(
          children: <Widget>[],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.only(top: 16, left: 16),
        child: ListView(
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          children: <Widget>[
            Text("Hi Dreamwalker", style: TextStyle(
              fontSize: 18,
              color: Colors.grey
            ),),
            SizedBox(height: 8,),
            Text("What would you like to drink?",
            style: TextStyle(
              color: Colors.black,
              fontSize: 18,
              fontWeight: FontWeight.bold
            ),),
            SizedBox(height: 16,),
            Container(
              height: 80,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(16)
                ),
                color: Colors.grey.withOpacity(0.1)
              ),
              child: Center(
                child: TextField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search, size: 32,),
                    disabledBorder: InputBorder.none,
                    hintText: "Search your favorite drinks",
                    hintStyle: TextStyle(
                      fontSize: 20,
                      color: Colors.grey
                    ),
                    border: InputBorder.none
                  ),
                ),
              ),
            ),
            SizedBox(height: 32,),
            Text("Most Popular", style: TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.bold,
            ),),
            SizedBox(height: 8,),
            Container(
              height: 300,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
//                color: Colors.blue
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 300,
                    width: 220,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17),
                      color: Color(0xff27428F)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(17),
                            color: Color(0xff708FE0),
                            image: DecorationImage(image: NetworkImage("https://img.pngio.com/pepsi-bottle-png-image-pepsi-png-2400_3328.png"))
                          ),
                        ),
                        Positioned(
                          top: 210,
                          left: 8,
                          right: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Tasty Watermelon",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white
                              ),),

                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("\$34.99",style: TextStyle(
                                    fontSize: 20,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold
                                  ),),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: (){},
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    height: 300,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Colors.teal
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Colors.tealAccent,
                              image: DecorationImage(image: NetworkImage("https://img.pngio.com/pepsi-bottle-png-image-pepsi-png-2400_3328.png"))
                          ),
                        ),
                        Positioned(
                          top: 210,
                          left: 8,
                          right: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Tasty Watermelon",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),

                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("\$34.99",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: (){},
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    height: 300,
                    width: 220,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(17),
                        color: Color(0xff27428F)
                    ),
                    child: Stack(
                      children: <Widget>[
                        Container(
                          height: 200,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(17),
                              color: Color(0xff708FE0),
                              image: DecorationImage(image: NetworkImage("https://img.pngio.com/pepsi-bottle-png-image-pepsi-png-2400_3328.png"))
                          ),
                        ),
                        Positioned(
                          top: 210,
                          left: 8,
                          right: 8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text("Tasty Watermelon",
                                style: TextStyle(
                                    fontSize: 18,
                                    color: Colors.white
                                ),),

                              Row(
                                mainAxisAlignment:MainAxisAlignment.spaceBetween,
                                children: <Widget>[
                                  Text("\$34.99",style: TextStyle(
                                      fontSize: 20,
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                  ),),
                                  FloatingActionButton(
                                    backgroundColor: Colors.white,
                                    child: Icon(
                                      Icons.arrow_forward,
                                      color: Colors.black,
                                    ),
                                    onPressed: (){},
                                  )
                                ],
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Text("Browse by categories",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18
            ),),
            SizedBox(height: 8,),
            Container(
              height: 120,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
//                color: Colors.teal
              ),
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.red,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.orange,
                            child: Center(
                              child: Icon(Icons.http,
                              size: 40,),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text("Watermelon",
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                          ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.yellow,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.orange,
                            child: Center(
                              child: Icon(Icons.http,
                                size: 40,),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text("Tangy Lemon",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                  Container(
                    height: 120,
                    width: 180,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 0,
                          top: 0,
                          child: Container(
                            height: 60,
                            width: 60,
                            color: Colors.orange,
                            child: Center(
                              child: Icon(Icons.http,
                                size: 40,),
                            ),
                          ),
                        ),
                        Positioned(
                          right: 8,
                          bottom: 8,
                          child: Text("Wild ...",
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontWeight: FontWeight.bold
                            ),),
                        )
                      ],
                    ),
                  ),
                  SizedBox(width: 16,),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}













