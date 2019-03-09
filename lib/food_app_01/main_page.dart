import 'package:flutter/material.dart';

class UserRequestFoodApp extends StatelessWidget {
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
        appBar: AppBar(
          actions: <Widget>[
            IconButton(
              onPressed: () {},
              icon: Icon(
                Icons.apps,
                color: Colors.black,
              ),
            )
          ],
          elevation: 0.0,
          backgroundColor: Colors.white,
          title: Text(
            "Breakfast",
            style: TextStyle(color: Colors.black, fontFamily: 'Montserrat'),
          ),
        ),
        body: SingleChildScrollView(


          scrollDirection: Axis.vertical,
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 60.0,
                  left: 16.0,
                  child: Container(
                    height: 300,
                    width: 30,
                    decoration: BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        RotatedBox(
                          quarterTurns: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Salad",
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Bread",
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 10,
                              )
                            ],
                          ),
                        ),
                        RotatedBox(
                          quarterTurns: 3,
                          child: Column(
                            children: <Widget>[
                              Text(
                                "Drink",
                                style: TextStyle(fontFamily: 'Montserrat'),
                              ),
                              Icon(
                                Icons.fiber_manual_record,
                                size: 10,
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  left: 68,
                  child: Container(
                    height: 380,
                    width: 250,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(17.0),
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.2),
                            blurRadius: 2.0,
                            spreadRadius: 1.0,
                            offset: Offset(2, 4))
                      ],
                      image: DecorationImage(
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.5), BlendMode.darken),
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2017/02/15/10/38/background-2068211_960_720.jpg"),
                          fit: BoxFit.cover),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          left: 24.0,
                          top: 32.0,
                          right: 16.0,
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: <Widget>[
                              Text(
                                "Garden salad",
                                style: TextStyle(
                                    color: Colors.white,
                                    fontFamily: 'Montserrat',
                                    fontSize: 20.0),
                              ),
                              IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.favorite,
                                  color: Colors.white,
                                ),
                              )
                            ],
                          ),
                        ),
                        Positioned(
                          left: 24.0,
                          top: 86.0,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: <Widget>[
                              Text(
                                "Avocado, Purple potato, Chili,",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              ),
                              Text(
                                "Cauliflower, Brococoli.",
                                style: TextStyle(
                                    fontSize: 10.0,
                                    fontFamily: 'Montserrat',
                                    color: Colors.white),
                              )
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  top: 210,
                  right: 60,
                  child: Container(
                    height: 210,
                    width: 210,
                    child: Image.asset(
                      "assets/img/food_app_01.png",
                      fit: BoxFit.cover,
                      alignment: Alignment.center,
                      height: 200,
                      width: 200,
                    ),
                  ),
                ),
                Positioned(
                  top: 50,
                  right: -15,
                  child: Container(
                    height: 320,
                    width: 40,
                    decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(17.0),
                        image: DecorationImage(
                            fit: BoxFit.cover,
                            colorFilter: ColorFilter.mode(Colors.black.withOpacity(0.4), BlendMode.darken),
                            image: NetworkImage(
                                "https://cdn.pixabay.com/photo/2017/02/15/10/38/background-2068211_960_720.jpg"))),
                  ),
                ),

                Positioned(
                  top: 430,
                  left: 16.0,
                  child: Container(
                    height: 150,
                    width: MediaQuery.of(context).size.width,
                    child: Column(
                      children: <Widget>[
                        SizedBox(height: 16.0,),

                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Popular", style: TextStyle(
                              fontSize: 24,
                              color: Colors.black,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.normal
                            ),),
                            Padding(
                              padding: const EdgeInsets.only(right: 24.0, top: 16.0),
                              child: IconButton(
                                onPressed: (){},
                                icon: Icon(Icons.more_horiz, color: Colors.grey,),
                              ),
                            )
                          ],
                        ),
                        SizedBox(height: 16.0,),
                        Padding(
                          padding: const EdgeInsets.only(right: 8.0),
                          child: Container(
                            height: 60,
                            width: MediaQuery.of(context).size.width,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8.0),
                              color: Colors.orange
                            ),
                          ),
                        )

                      ],
                    ),
                  ),
                )
              ],
            ),
          ),
        ));
  }
}










