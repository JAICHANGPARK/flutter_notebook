import 'package:flutter/material.dart';
import 'package:flutter_notebook/clock_app/pages/first_tab.dart';

class ClockAppCloneStudy extends StatelessWidget {
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
    return Container(
      height: 600,
      width: double.infinity,
      child: DefaultTabController(
        length: 3,
        child: Scaffold(
          bottomNavigationBar: BottomBar(),
          appBar: AppBar(
            backgroundColor: Colors.transparent,
            bottom: PreferredSize(
                child: Container(
                  color: Colors.transparent,
                  child: SafeArea(
                      child: Column(
                    children: <Widget>[
                      TabBar(
                        tabs: [
                          Tab(
                            text: "ALARMS",
                            icon: Icon(
                              Icons.menu,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: "RECORDS",
                            icon: Icon(
                              Icons.memory,
                              size: 40,
                            ),
                          ),
                          Tab(
                            text: "PROFILE",
                            icon: Icon(
                              Icons.supervised_user_circle,
                              size: 40,
                            ),
                          ),
                        ],
                        unselectedLabelColor: Colors.black26,
                        indicatorWeight: 15,
                        indicatorSize: TabBarIndicatorSize.label,
                        labelColor: Color(0xff2d386b),
                        labelStyle: TextStyle(
                            fontSize: 12,
                            letterSpacing: 1.3,
                            fontWeight: FontWeight.w500),
                        indicator: UnderlineTabIndicator(
                            borderSide: BorderSide(
                                color: Color(0xffff0863), width: 4.0),
                            insets: EdgeInsets.fromLTRB(40, 20, 40, 0)),
                      )
                    ],
                  )),
                ),
                preferredSize: Size.fromHeight(55)),
            elevation: .0,
          ),
          body: TabBarView(
            children: <Widget>[
              Center(
                child: FirstTab(),
              ),
              Center(),
              Text("ThirdScreen")
            ],
          ),
        ),
      ),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.fromLTRB(50, 0, 50, 0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          FlatButton(
            onPressed: () {},
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            color: Color(0xffff5e92),
            textColor: Colors.white,
            padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 25),
            child: Text(
              "EDIT ALARMS",
              style: TextStyle(letterSpacing: 1.5),
            ),
          ),
          FloatingActionButton(
            onPressed: () {},
            backgroundColor: Colors.white,
            foregroundColor: Colors.black,
            elevation: 5,
            highlightElevation: 3,
            child: Text(
              "+",
              style: TextStyle(
                  color: Color(0xff253165),
                  fontWeight: FontWeight.w700,
                  fontSize: 25),
            ),
          )
        ],
      ),
    );
  }
}
