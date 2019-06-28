import 'package:flutter/material.dart';
import 'package:dotted_border/dotted_border.dart';

class AppForCollector extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
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

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            left: 16,
            right: 16,
            top: 16,
            child: Container(
              height: deviceHeight / 4.1,
              decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.5),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 24,
            child: Container(
              height: deviceHeight / 4.1,
              decoration: BoxDecoration(
                  color: Colors.indigo.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16)),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            top: 0,
            child: Container(
              padding: const EdgeInsets.only(top: 64, right: 16, left: 16),
              height: deviceHeight / 4,
              decoration: BoxDecoration(
                  color: Colors.indigo,
                  borderRadius: BorderRadius.circular(16)),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.search,
                        ),
                        onPressed: () {},
                        iconSize: 32,
                        color: Colors.white,
                      ),
                      Text(
                        "Your collection",
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w900,
                            fontSize: 22),
                      ),
                      IconButton(
                        icon: Icon(Icons.more_vert),
                        onPressed: () {},
                        iconSize: 32,
                        color: Colors.white,
                      ),
                    ],
                  ),
                  TabBar(
                    controller: _tabController,
                    unselectedLabelColor: Colors.white,
                    labelColor: Colors.greenAccent,
                    indicatorSize: TabBarIndicatorSize.label,
                    indicatorWeight: 4,
                    indicatorColor: Colors.greenAccent,
                    tabs: <Widget>[
                      Tab(
                        text: "Gamses",
                      ),
                      Tab(
                        text: "Books",
                      ),
                      Tab(
                        text: "Movies",
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: deviceHeight / 3.4,
            left: 0,
            right: 0,
            child: Container(
              padding: const EdgeInsets.only(left: 8, right: 8),
              height: deviceHeight / 1.6,
              child: TabBarView(controller: _tabController, children: <Widget>[
                Container(
                  child: GridView.count(
                    mainAxisSpacing: 8,
                    crossAxisSpacing: 8,
                    crossAxisCount: 2,
                    children: <Widget>[
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          margin: EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32),
                            boxShadow: [
                              BoxShadow(
                                  color: Colors.indigo.withOpacity(0.1),
                                  blurRadius: 5,
                                  spreadRadius: 2)
                            ],
                          ),
                          child: Stack(
                            children: <Widget>[
                              Positioned(
                                top: 16,
                                left: 16,
                                child: Container(
                                  height: 24,
                                  width: 48,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(16),
                                    border: Border.all(color: Colors.indigo),
                                  ),
                                ),
                              ),
                              Positioned(
                                left: 16,
                                bottom: 16,
                                right: 32,
                                child: Text(
                                  "Nintendo\nSwitch",
                                  style: TextStyle(
                                      color: Colors.indigo, letterSpacing: 1.2),
                                ),
                              )
                            ],
                          ),
                        ),
                        feedback: Material(
                          child: Container(
                            height: 180,
                            width: 180,
                            margin: EdgeInsets.all(4),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32),
                              boxShadow: [
                                BoxShadow(
                                    color: Colors.indigo.withOpacity(0.1),
                                    blurRadius: 5,
                                    spreadRadius: 2)
                              ],
                            ),
                            child: Stack(
                              children: <Widget>[
                                Positioned(
                                  top: 16,
                                  left: 16,
                                  child: Container(
                                    height: 24,
                                    width: 48,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(16),
                                      border: Border.all(color: Colors.indigo),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 16,
                                  bottom: 16,
                                  right: 32,
                                  child: Text(
                                    "Nintendo\nSwitch",
                                    style: TextStyle(
                                        color: Colors.indigo,
                                        letterSpacing: 1.2),
                                  ),
                                )
                              ],
                            ),
                          ),
                        ),
                        childWhenDragging: Container(
                          margin: EdgeInsets.all(8),
                          decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
                          child: DottedBorder(
                            gap: 3,
                            strokeWidth: 1,
                            child: Center(
                              child: Icon(Icons.add),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: Colors.blue,
                ),
                Container(
                  color: Colors.red,
                ),
              ]),
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            child: Container(
              height: 60,
              padding: const EdgeInsets.symmetric(
                horizontal: 24
              ),

              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Icon(Icons.star_border,
                  color: Colors.indigo,),
                  Icon(Icons.apps,
                    color: Colors.indigo,),
                  Icon(Icons.person_outline,
                    color: Colors.indigo,)
                ],
              ),
            ),
          )

        ],
      ),
    );
  }
}

























