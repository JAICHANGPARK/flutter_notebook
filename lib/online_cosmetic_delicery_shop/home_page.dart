import 'package:flutter/material.dart';


class OnlineCosmeticDeliveryShop extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/' : (BuildContext context) => MainPage(),
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
        iconTheme: IconThemeData(color: Colors.indigo),
        backgroundColor: Colors.transparent,
        elevation: 0,
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search, color: Colors.indigo,),
            onPressed: (){},
          )
        ],
      ),
      drawer: Drawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(height: 16,),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              height: 160,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
              ),
              child: Column(
                children: <Widget>[
                  Text("Online cosmetic delivery shop",style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 32,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 1.5,
                  ),),
                  SizedBox(height: 16,),
                  Text("Clear your skin with a powerful cream mixed just for you",style: TextStyle(
                    color: Colors.indigo,
                    fontSize: 18,

                    letterSpacing: 1.5,
                  ),)
                ],
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text("washers".toUpperCase(), style: TextStyle(
                  color: Colors.indigo,
                  fontWeight: FontWeight.bold,
                ),),
              ),
            ),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 240,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(16),
                      border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Face Washer"),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            )
                          ],
                        ),
                        Text("\$74"),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text('Details'),
                            Icon(Icons.arrow_forward_ios, size: 16,)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Face Washer"),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            )
                          ],
                        ),
                        Text("\$74"),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text('Details'),
                            Icon(Icons.arrow_forward_ios, size: 16,)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Cleansers".toUpperCase(), style: TextStyle(
                      color: Colors.indigo,
                      fontWeight: FontWeight.bold
                  ),),
                  Text("See More", style: TextStyle(
                    color: Colors.indigo
                  ),)
                ],
              ),
            ),
            SizedBox(height: 8,),
            Container(
              padding: EdgeInsets.only(left: 16),
              height: 240,
              child: ListView(
                scrollDirection: Axis.vertical,
                children: <Widget>[
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Cleanser"),
                            Icon(
                              Icons.star_border,
                              color: Colors.black,
                            )
                          ],
                        ),
                        Text("\$49"),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text('Details'),
                            Icon(Icons.arrow_forward_ios, size: 16,)
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.all(8),
                    padding: EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                    width: MediaQuery.of(context).size.width / 1.2,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(16),
                        border: Border.all(color: Colors.black, width: 2)
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text("Face Washer"),
                            Icon(
                              Icons.star,
                              color: Colors.black,
                            )
                          ],
                        ),
                        Text("\$74"),
                        Spacer(),
                        Row(
                          children: <Widget>[
                            Text('Details'),
                            Icon(Icons.arrow_forward_ios, size: 16,)
                          ],
                        )
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}





















