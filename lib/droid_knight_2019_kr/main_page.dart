import 'package:flutter/material.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/pages/indo_page.dart';

class DroidKnightHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "DroidKnights",
      theme: ThemeData(
          primaryColor: Color(0xff000000),
          accentColor: Color(0xff40d225),
          indicatorColor: Color(0xff40d225),
          primaryColorLight: Color(0xff96ce7e)),
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
  List<Widget> _appbar = [];
  List<Widget> _children = [];
  int _currentIndex = 0;

  Widget scheduleAppbar(){
    return TabBar(
      controller: _tabController,
      labelColor: Color(0xff40d225),
      unselectedLabelColor: Colors.grey,
      indicatorColor: Color(0xff40d225),
      tabs: <Widget>[
        Tab(text: "Track1",),
        Tab(text: "Track2",),
        Tab(text: "Track3",),
      ],
    );
  }
  Widget scheduleBody(){
    return Scaffold(
      body: TabBarView(
          controller: _tabController,
          children: <Widget>[
//            TrackScreen('assets/json/schedule_track1.json'),
//            TrackScreen('assets/json/schedule_track2.json'),
//            TrackScreen('assets/json/schedule_track3.json')
          ]),
    );
  }

  @override
  void initState() {
    // TODO: implement initState

    super.initState();

    _tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    _appbar.addAll([null, scheduleAppbar()]);
    _children.addAll([
      InfoPage(),
      scheduleBody()
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Image.asset(
              'assets/img_droid_knights/dk_appbar_title.png',
              fit: BoxFit.contain,
              height: 25.0,
            ),
          ],
        ),
        elevation: 0.7,
        bottom: _appbar[_currentIndex],
      ),
      body: _children[_currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          onTap: onTabTapped,
          currentIndex: _currentIndex,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: Text('Info')),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), title: Text("Schedule"))
          ]),
    );
  }

  void onTabTapped(int index) {
    setState(() {
      _currentIndex = index;
    });
  }
}
