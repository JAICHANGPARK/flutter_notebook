import 'package:flutter/material.dart';

class DabloonUserRequestApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage> with TickerProviderStateMixin {
  TabController _tabController;
  TabController _tabDetailController;
  int pageIndex = 0;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
    _tabDetailController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfafafafa),
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: Container(
              height: 240,
              width: MediaQuery.of(context).size.width,
              color: Colors.pinkAccent,
              child: Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Padding(
                    padding: const EdgeInsets.only(top: 28, left: 16.0),
                    child: IconButton(
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 32,
                      ),
                      onPressed: () {},
                    ),
                  ),
                  SizedBox(
                    height: 16.0,
                  ),
                  _buildTopTabBar(context),
                  SizedBox(
                    height: 16.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 24),
                    child: _buildSecondaryTabBar(context),
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            top: 240,
            left: 0,
            right: 0,
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  width: MediaQuery.of(context).size.width,
//                  color: Colors.blue,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 24.0),
                        child: Row(
                          children: <Widget>[
                            Text(
                              "Browse",
                              style: TextStyle(
                                fontSize: 18.0,
                                color: Colors.grey,
                              ),
                            ),
                            SizedBox(
                              width: 8,
                            ),
                            Text(
                              "All Coins",
                              style: TextStyle(
                                  fontSize: 18.0,
                                  color: Colors.grey.withOpacity(0.5)),
                            )
                          ],
                        ),
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.filter_list,
                          color: Colors.grey,
                          size: 32,
                        ),
                        onPressed: () {
                          Scaffold.of(context).showSnackBar(
                              new SnackBar(content: Text("Filter Pressed")));
                        },
                      )
                    ],
                  ),
                ),
                Container(
                  height: MediaQuery.of(context).size.height / 2,
                  width: double.infinity,
                  child: TabBarView(
                    controller: _tabController,
                    children: <Widget>[
                      ListView(
                        scrollDirection: Axis.vertical,
                        children: <Widget>[
                          Padding(
                            padding:
                                const EdgeInsets.symmetric(horizontal: 16.0),
                            child: Container(
                              height: 100,
                              width: MediaQuery.of(context).size.width - 48,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(17.0),
                                  color: Colors.white),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                children: <Widget>[
                                  SizedBox(width: 16,),
                                  Container(
                                    height: 80,
                                    width: 80,
                                    color: Colors.pink,
                                  ),
                                  SizedBox(width: 16.0,),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: <Widget>[
                                      Text("Pharnabazus Coin"),
                                      Text("400 BC")
                                    ],
                                  ),
                                  IconButton(
                                    onPressed: (){},
                                    icon: Icon(Icons.more_vert,
                                    color: Colors.grey,
                                    size: 40,),
                                  )
                                ],
                              ),

                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget _buildTopTabBar(BuildContext context) {
    return TabBar(
      onTap: (int value) {
        print(value);
        pageIndex = value;
      },
      controller: _tabController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey.withOpacity(0.7),
      isScrollable: true,
      tabs: <Widget>[
        Tab(
          child: Text(
            "Marble Statues",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 38),
          ),
        ),
        Tab(
          child: Text(
            "Coins",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 38),
          ),
        ),
        Tab(
          child: Text(
            "artificial",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 38),
          ),
        )
      ],
    );
  }

  Widget _buildSecondaryTabBar(BuildContext context) {
    return TabBar(
      onTap: (int value) {
        print(value);
        setState(() {});
      },
      controller: _tabDetailController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey.withOpacity(0.7),
      isScrollable: true,
      tabs: <Widget>[
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Tab(
            child: Text(
              "All",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Tab(
            child: Text(
              "Rare",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Tab(
            child: Text(
              "Greek",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8.0),
          child: Tab(
            child: Text(
              "Roman",
              style: TextStyle(
                  fontFamily: 'Montserrat',
                  letterSpacing: 1.2,
                  fontWeight: FontWeight.bold,
                  fontSize: 18),
            ),
          ),
        )
      ],
    );
  }
}
