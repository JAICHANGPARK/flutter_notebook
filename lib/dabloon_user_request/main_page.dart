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
      backgroundColor: Colors.white,
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
                    padding: const EdgeInsets.only(top: 28),
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
          )
        ],
      ),
    );
  }

  Widget _buildTopTabBar(BuildContext context) {
    return TabBar(
      onTap: (int value) {
        print(value);
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
      },
      controller: _tabDetailController,
      indicatorColor: Colors.transparent,
      labelColor: Colors.white,
      unselectedLabelColor: Colors.grey.withOpacity(0.7),
      isScrollable: true,
      tabs: <Widget>[
        Tab(
          child: Text(
            "All",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Tab(
          child: Text(
            "Rare",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Tab(
          child: Text(
            "Greek",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        ),
        Tab(
          child: Text(
            "Roman",
            style: TextStyle(
                fontFamily: 'Montserrat',
                letterSpacing: 1.2,
                fontWeight: FontWeight.bold,
                fontSize: 18),
          ),
        )
      ],
    );
  }
}
