import 'package:flutter/material.dart';

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
                          color: Colors.white,
                        ),
                        feedback: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange,
                          ),
                        ),
                        childWhenDragging: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Icon(Icons.add),
                          ),
                        ),
                      ),
                      Draggable(
                        child: Container(
                          color: Colors.white,
                        ),
                        feedback: Container(
                          height: 180,
                          width: 180,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16),
                            color: Colors.orange,
                          ),
                        ),
                        childWhenDragging: Container(
                          decoration: BoxDecoration(
                              border: Border.all(),
                              borderRadius: BorderRadius.circular(16)),
                          child: Center(
                            child: Icon(Icons.add),
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
          )
        ],
      ),
    );
  }
}
