import 'package:flutter/material.dart';

class ProductPageExploration extends StatelessWidget {
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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    var centerHeight = MediaQuery.of(context).size.height / 2;
    return Scaffold(
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: centerHeight,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(border: Border.all(),
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(60))
              ),
              child: Stack(
                children: <Widget>[
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: Container(
                      height: 240,
                      decoration: BoxDecoration(
                          border: Border.all(),
                          borderRadius: BorderRadius.only(
                              bottomLeft: Radius.circular(60))),
                      child: Stack(
                        children: <Widget>[
                          Positioned(
                            top: 60,
                            left: 24,
                            right: 24,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: <Widget>[
                                Icon(Icons.arrow_back),
                                Icon(Icons.menu)
                              ],
                            ),
                          ),
                          Positioned(
                            bottom: 24,
                            left: 24,
                            child: Text("\$71,500",
                            style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.bold
                            ),),
                          )
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    bottom: 16,
                    right: 0,
                    child: Container(
                      height: 80,
                      width: 100,
                      decoration: BoxDecoration(
                        border: Border.all(),
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(60),
                          bottomLeft: Radius.circular(60),
                        ),
                        
                      ),
                      child: Center(
                        child: Icon(Icons.shopping_cart,size: 42,),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 16,),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text("Similar", style: TextStyle(
                    fontSize: 32
                  ),),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            SizedBox(height: 16,),
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(),
              ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      decoration: BoxDecoration(
                        border: Border.all(),
                      ),
                      child: Center(
                        child: Transform.rotate(
                          angle: 4.5,
                          child: TabBar(
                            indicatorSize: TabBarIndicatorSize.tab,
                            labelColor: Colors.green,
                            unselectedLabelColor: Colors.grey,
                            labelStyle: TextStyle(color: Colors.green),
                            tabs: [
                              Tab(
                                text: "Bracelet",
                              ),
                              Tab(
                                text: "Necklace",
                              ),
                              Tab(
                                text: "Ring",
                              ),
                            ],
                            controller: _tabController,
                          ),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 8,
                    child: Container(
                      decoration: BoxDecoration(border: Border.all()),
                      child: TabBarView(controller: _tabController, children: [
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[Container()],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[Container()],
                        ),
                        ListView(
                          scrollDirection: Axis.horizontal,
                          children: <Widget>[Container()],
                        )
                      ]),
                    ),
                  )
                ],
              ),
//                child: Row(
//                  children: <Widget>[
//                    Container(
//                      height: 240,
//                      width: 60,
//                      child: Transform.rotate(angle: 180,
//                      child: TabBar(
//                          controller: _tabController,
//                          tabs: [
//                        Tab(text: "Bracelet",),
//                        Tab(text: "Necklace",),
//                        Tab(text: "Ring",),
//                      ]),),
//                    ),
//                    TabBarView(
//                      controller: _tabController,
//                      children: <Widget>[
//                        ListView(
//                          shrinkWrap: true,
//                       scrollDirection: Axis.horizontal,
//                       children: <Widget>[
//
//                       ],
//                        ),
//                        ListView(
//                          shrinkWrap: true,
//                          scrollDirection: Axis.horizontal,
//                          children: <Widget>[
//
//                          ],
//                        ),
//                        ListView(
//                          shrinkWrap: true,
//                          scrollDirection: Axis.horizontal,
//                          children: <Widget>[
//
//                          ],
//                        ),
//                      ],
//                    ),
//                  ],
//                ),
            )
          ],
        ),
      ),
    );
  }
}
