import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/app_res/strings.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/bloc/bloc_provider.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/bloc/tab_bloc.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/const/route.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/pages/indo_page.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/pages/splash_page.dart';
import 'package:flutter_notebook/droid_knight_2019_kr/pages/track_page.dart';


class DroidKnightHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Platform.isAndroid ?
    MaterialApp(
      title: Strings.DROID_KNIGHTS,
      theme: ThemeData(
          primaryColor: Color(0xff000000),
          accentColor: Color(0xff40d225),
          indicatorColor: Color(0xff40d225),
          primaryColorLight: Color(0xff96ce7e)),
//      home: MainPage(),
      routes: {
        Routes.SPLASH : (_) => SplashScreen(),
        Routes.HOME : (_) => MainPageV2()
      },
    ):
    CupertinoApp(
      title: Strings.DROID_KNIGHTS,
      theme: CupertinoThemeData(
          primaryColor: Color(0xff000000),
          primaryContrastingColor: Color(0xff40d225),
          scaffoldBackgroundColor: Color(0xff40d225),
          barBackgroundColor:  Color(0xff000000),
      ),
    );
  }
}

class MainPageV2 extends StatelessWidget {

  Widget createAndroidWidget(TabBloc _tabBloc, var snapshot){
    return Scaffold(
      body: bodyPages(snapshot.data),
      bottomNavigationBar: BottomNavigationBar(
          onTap: (int index ) => _tabBloc.changeBottomTab(index),
          currentIndex: snapshot.data,
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.info), title: Text('Info')),
            BottomNavigationBarItem(
                icon: Icon(Icons.schedule), title: Text("Schedule"))
          ]),

    );
  }
  Widget createIosWidget(){
    return CupertinoTabScaffold(
      backgroundColor: Color(0xff112030),
      tabBar: CupertinoTabBar(items: [
        BottomNavigationBarItem(
            icon: Icon(Icons.info), title: Text('Info')),
        BottomNavigationBarItem(
            icon: Icon(Icons.schedule), title: Text("Schedule"))
      ]),
      tabBuilder: (context, index){
        return CupertinoTabView(
          builder: (context){
            return bodyPages(index);
          },
        );
      },
    );
  }

  Widget bodyPages(index){
    switch(index){
      case 0:
        return InfoPage();
      case 1:
        return SchedulePage();

    }
  }
  @override
  Widget build(BuildContext context) {
    final _tabBloc = BlocProvider.of<TabBloc>(context);

    return StreamBuilder(
      stream: _tabBloc.$bottomTab,
      builder: (context, snapshot){
        if(!snapshot.hasData)return Container();
        return Platform.isAndroid ? createAndroidWidget(_tabBloc, snapshot)
            : createIosWidget();
      },
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
            TrackScreen('assets/json/schedule_track1.json'),
            TrackScreen('assets/json/schedule_track2.json'),
            TrackScreen('assets/json/schedule_track3.json')
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
