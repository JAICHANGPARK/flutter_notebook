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
      body: Column(
        children: <Widget>[
          SizedBox(
            height: 24,
          ),
          Container(
            height: 48,
            width: deviceWidth,
            margin:
                const EdgeInsets.only(left: 24, right: 24, top: 24, bottom: 24),
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
          TabBar(
            controller: _tabController,
            tabs: <Widget>[
              Tab(
                text: "Discover",
              ),
              Tab(
                text: "Discover",
              ),
              Tab(
                text: "Discover",
              ),
              Tab(
                text: "Discover",
              ),
            ],
          )
        ],
      ),
    );
  }
}












