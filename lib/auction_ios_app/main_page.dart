import 'package:flutter/material.dart';

class AuctionKawsApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Color(0xfff2f2fa),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 24,
            ),
            SafeArea(
              top: true,
              left: true,
              child: Container(
                height: 48,
                width: deviceWidth,
                margin: const EdgeInsets.only(
                    left: 24, right: 24, top: 24, bottom: 24),
                padding: EdgeInsets.only(left: 16, right: 16),
                decoration: BoxDecoration(
                    color: Colors.white, borderRadius: BorderRadius.circular(8)),
                child: TextField(
                  decoration: InputDecoration(
                    hintText: "Search",
                    hintStyle: TextStyle(
                      color: Colors.black,
                    ),
                    prefixIcon: Icon(Icons.search),
                    disabledBorder: InputBorder.none,
                    enabledBorder: InputBorder.none,
                  ),
                ),
              ),
            ),
            TabBar(
              controller: _tabController,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey,
              indicatorWeight: 1,
              indicatorColor: Colors.white,
              tabs: <Widget>[
                Tab(
                  text: "Discover",
                ),
                Tab(
                  text: "Upcoming",
                ),
                Tab(
                  text: "Favorite",
                ),
                Tab(
                  text: "My Auctions",
                ),
              ],
            ),
            Container(
              height: MediaQuery.of(context).size.height / 1.55,
              width: deviceWidth,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  DiscoverPage(),
                  Container(),
                  Container(),
                  Container(),
                ],
              ),
            )
          ],
        ),
      ),
      bottomNavigationBar: Container(
        height: 60,
        decoration: BoxDecoration(color: Colors.white),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.indigo,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  Icons.apps,
                  color: Colors.white,
                ),
              ),
            ),
            SizedBox(
              width: 38,
            ),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  Icons.add,
                  color: Colors.indigo,
                ),
              ),
            ),
            SizedBox(
              width: 38,
            ),
            Container(
              height: 42,
              width: 42,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(
                  Icons.person_outline,
                  color: Colors.indigo,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}

class DiscoverPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.vertical,
      shrinkWrap: true,
      children: <Widget>[
        Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F11%2Fkaws-dior-kim-jones-menswear-capsule-release-date-details-1.jpg?q=75&w=800&cbr=1&fit=max"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 24,
                  right: 24,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.indigo,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(16),
                        bottomRight: Radius.circular(16)
                      )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dior x Kaws",
                        style: TextStyle(
                          color: Colors.indigo,
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                        ),),
                        Text("Dior x KawsDior x KawsDior x Kaws",
                        style: TextStyle(
                          color: Colors.grey,

                        ),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 80,
                  child: Container(
                    height: 32,
                    width: 200,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(8),
                        bottomLeft: Radius.circular(8)
                      ),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.indigo.withOpacity(0.1),
                          blurRadius: 3,
                          spreadRadius: 3
                        )
                      ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.access_time,size: 18,
                        color: Colors.indigo,),
                        Text("04h 27m 03s",style: TextStyle(
                          color: Colors.indigo
                        ),),
                        Container(
                          width: 72,
                          color: Colors.indigo,
                          child: Center(
                            child: Text("\$10,000",
                            style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.bold
                            ),),
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            )),
        SizedBox(height: 16,),
        Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2019%2F01%2Fdior-kaws-bff-plush-toy-ss19-release-price-tw.jpg?w=960&cbr=1&q=90&fit=max"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 24,
                  right: 24,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.indigo,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dior x Kaws",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Dior x KawsDior x KawsDior x Kaws",
                          style: TextStyle(
                            color: Colors.grey,

                          ),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 80,
                  child: Container(
                    height: 32,
                    width: 200,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 3
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.access_time,size: 18,
                          color: Colors.indigo,),
                        Text("04h 27m 03s",style: TextStyle(
                            color: Colors.indigo
                        ),),
                        Container(
                          width: 72,
                          color: Colors.indigo,
                          child: Center(
                            child: Text("\$7,500",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            )),
        SizedBox(height: 16,),
        Container(
            margin: const EdgeInsets.only(left: 24, right: 24),
            height: 260,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://image-cdn.hypb.st/https%3A%2F%2Fhypebeast.com%2Fimage%2F2018%2F11%2Fkaws-dior-kim-jones-menswear-capsule-release-date-details-1.jpg?q=75&w=800&cbr=1&fit=max"),
                    fit: BoxFit.cover)),
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 24,
                  right: 24,
                  child: Container(
                    width: 28,
                    height: 28,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(8)),
                    child: Center(
                      child: Icon(
                        Icons.favorite_border,
                        color: Colors.indigo,
                        size: 18,
                      ),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 0,
                  right: 0,
                  child: Container(
                    height: 100,
                    padding: const EdgeInsets.only(left: 24),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(16),
                            bottomRight: Radius.circular(16)
                        )
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Text("Dior x Kaws",
                          style: TextStyle(
                              color: Colors.indigo,
                              fontSize: 24,
                              fontWeight: FontWeight.bold
                          ),),
                        Text("Dior x KawsDior x KawsDior x Kaws",
                          style: TextStyle(
                            color: Colors.grey,

                          ),)
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  bottom: 80,
                  child: Container(
                    height: 32,
                    width: 200,
                    padding: EdgeInsets.only(left: 8),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(8),
                            bottomLeft: Radius.circular(8)
                        ),
                        boxShadow: [
                          BoxShadow(
                              color: Colors.indigo.withOpacity(0.1),
                              blurRadius: 3,
                              spreadRadius: 3
                          )
                        ]
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Icon(Icons.access_time,size: 18,
                          color: Colors.indigo,),
                        Text("04h 27m 03s",style: TextStyle(
                            color: Colors.indigo
                        ),),
                        Container(
                          width: 72,
                          color: Colors.indigo,
                          child: Center(
                            child: Text("\$10,000",
                              style: TextStyle(
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold
                              ),),
                          ),
                        )
                      ],
                    ),
                  ),
                )

              ],
            ))
      ],
    );
  }
}


















