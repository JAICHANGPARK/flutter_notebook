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
  int selectedTabIndex = 0;

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
              decoration: BoxDecoration(
                  border: Border.all(),
                  borderRadius:
                      BorderRadius.only(bottomLeft: Radius.circular(60))),
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
                            child: Text(
                              "\$71,500",
                              style: TextStyle(
                                  fontSize: 32, fontWeight: FontWeight.bold),
                            ),
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
                        child: Icon(
                          Icons.shopping_cart,
                          size: 42,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 24),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Text(
                    "Similar",
                    style: TextStyle(fontSize: 32),
                  ),
                  Icon(Icons.more_horiz),
                ],
              ),
            ),
            SizedBox(
              height: 16,
            ),
            Container(
              height: 320,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
//                border: Border.all(),
                  ),
              child: Row(
                children: <Widget>[
                  Expanded(
                    flex: 2,
                    child: Container(
                      padding: const EdgeInsets.only(top: 24, bottom: 24),
                      decoration: BoxDecoration(
//                        border: Border.all(),
                          ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: <Widget>[
                          Transform.rotate(
                            angle: -1.58,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedTabIndex = 0;
                                });
                              },
                              child: Text(
                                "Bracelet",
                                style: selectedTabIndex == 0
                                    ? TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -1.58,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedTabIndex = 1;
                                });
                              },
                              child: Text(
                                "Necklace",
                                style: selectedTabIndex == 1
                                    ? TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                              ),
                            ),
                          ),
                          Transform.rotate(
                            angle: -1.58,
                            child: InkWell(
                              onTap: () {
                                setState(() {
                                  selectedTabIndex = 2;
                                });
                              },
                              child: Text(
                                "Ring",
                                style: selectedTabIndex == 2
                                    ? TextStyle(
                                        color: Colors.green,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18)
                                    : TextStyle(
                                        color: Colors.grey,
                                        fontWeight: FontWeight.bold,
                                        fontSize: 18),
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  Expanded(
                      flex: 8,
                      child: Container(
                        decoration: BoxDecoration(
//                          border: Border.all()
                            ),
                        child: ListView(
                            scrollDirection: Axis.horizontal,
                            children: <Widget>[
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 48, horizontal: 16),
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(32)),
                              ),
                              Container(
                                margin: const EdgeInsets.symmetric(
                                    vertical: 48, horizontal: 16),
                                height: 180,
                                width: 180,
                                decoration: BoxDecoration(
                                    border: Border.all(),
                                    borderRadius: BorderRadius.circular(32)),
                              ),
                            ]),
                      ))
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
