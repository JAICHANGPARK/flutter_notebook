import 'package:flutter/material.dart';

class FlowerOnlineShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                  color: Colors.black,
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://cdn.pixabay.com/photo/2018/05/10/00/37/leaves-3386570_960_720.jpg"),
                      fit: BoxFit.cover,
                      colorFilter: ColorFilter.mode(
                          Colors.black.withOpacity(0.3), BlendMode.darken))),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 32,
                    left: 24,
                    right: 24,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        Icon(Icons.search, color: Colors.white)
                      ],
                    ),
                  ),
                  Positioned(
                    bottom: 48,
                    left: 24,
                    right: 24,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text("Gazania", style: TextStyle(
                          color: Colors.white, fontWeight:
                            FontWeight.bold,
                          fontSize:34,
                      letterSpacing: 4
                        ),),
                        SizedBox(height: 32,),

                        Row(
                          children: <Widget>[
                            SizedBox(width: 34,),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("native".toUpperCase(), style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                Text("Southern Africa",
                                style: TextStyle(
                                  color: Colors.white,
                                    letterSpacing: 4
                                ),)
                              ],
                            ),
                            Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text("family".toUpperCase(), style: TextStyle(
                                  color: Colors.grey,
                                ),),
                                Text("Asteraceae",
                                  style: TextStyle(
                                      color: Colors.white,
                                    letterSpacing: 4
                                  ),)
                              ],
                            )
                          ],
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              decoration: BoxDecoration(color: Colors.white),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Text("From ", style: TextStyle(
                    color: Colors.grey
                  ),),
                  Text("\$6.99", style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Container(
                    height: 50,
                    width: 50,
                    decoration: BoxDecoration(
                      color: Colors.deepOrange,
                      borderRadius: BorderRadius.circular(12)
                    ),
                    child: Center(
                      child: Icon(Icons.shopping_basket,
                      color: Colors.white,),
                    ),
                  )
                ],
              ),
            ),

          )
        ],
      ),
    );
  }
}
