import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
import 'package:flutter/material.dart';

class CosmeticServiceApp extends StatelessWidget {
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
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.lightGreenAccent.withOpacity(0.95),
//      backgroundColor: Color(0xff78c545),
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 2,
            child: Container(
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    right: 24,
                    top: 64,
                    child: Container(
                      height: 32,
                      width: 32,
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.3),
                        borderRadius: BorderRadius.circular(8),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.shopping_basket,
                          color: Colors.white,
                          size: 18,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 24,
                    top: 64,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Row(
                          children: <Widget>[
                            Text(
                              "Rhyme City Center",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                            ),
                            Icon(
                              Icons.arrow_forward_ios,
                              size: 12,
                              color: Colors.white,
                            )
                          ],
                        ),
                        SizedBox(
                          height: 16,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              size: 12,
                              color: Colors.white,
                            ),
                            Text(
                              "1.2km",
                              style: TextStyle(
                                color: Colors.white,
                                letterSpacing: 1.5,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 8,
            child: Container(
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(48),
                    topRight: Radius.circular(48),
                  ),
                  color: Colors.white),
              child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Container(
                      child: Center(
                        child: Container(
                          height: 5,
                          width: 48,
                          decoration: BoxDecoration(
                              color: Colors.grey.withOpacity(0.3),
                              borderRadius: BorderRadius.circular(8)),
                        ),
                      ),
                    ),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      child: TabBar(
                          unselectedLabelColor: Colors.grey,
                          labelColor: Colors.lightGreen,
                          controller: _tabController,
                          indicator: new BubbleTabIndicator(
                            indicatorHeight: 24.0,
                            indicatorColor:
                                Colors.lightGreenAccent.withOpacity(0.2),
                            tabBarIndicatorSize: TabBarIndicatorSize.tab,
                          ),
                          isScrollable: false,
                          tabs: <Widget>[
                            Tab(
                              text: "Face",
                            ),
                            Tab(
                              text: "Body",
                            ),
                            Tab(
                              text: "Hair",
                            ),
                          ]),
                    ),
                  ),
                  Expanded(
                    flex: 15,
                    child: TabBarView(
                        controller: _tabController,
                        children: <Widget>[
                          Container(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                            borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                            horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                              style: TextStyle(
                                                fontSize: 18,
                                                letterSpacing: 1.2
                                              ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                  fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                  horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                right: 32),
                                                decoration: BoxDecoration(
                                                  color: Colors.grey.withOpacity(0.3),
                                                  borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                      color: Colors.green,
                                                      size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1.2
                                                ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                    right: 32),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.3),
                                                    borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                        color: Colors.green,
                                                        size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1.2
                                                ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                    right: 32),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.3),
                                                    borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                        color: Colors.green,
                                                        size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1.2
                                                ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                    right: 32),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.3),
                                                    borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                        color: Colors.green,
                                                        size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                          Container(
                            child: ListView(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              children: <Widget>[
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1.2
                                                ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                    right: 32),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.3),
                                                    borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                        color: Colors.green,
                                                        size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                ),
                                SizedBox(
                                  height: 16,
                                ),
                                Container(
                                  height: 240,
                                  margin: const EdgeInsets.only(left: 8),
                                  width: double.infinity,
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              borderRadius: BorderRadius.circular(18),
                                              color: Colors.lightGreenAccent),
                                          child: Center(
                                            child: Image.network("https://illingcompany.com/wp-content/uploads/2018/08/AF_06.png"),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 16
                                          ),
                                          decoration: BoxDecoration(),
                                          child: Column(
                                            crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                            children: <Widget>[
                                              Text("Holika Holika Serum",
                                                style: TextStyle(
                                                    fontSize: 18,
                                                    letterSpacing: 1.2
                                                ),),
                                              Text(
                                                "Anti wrinkle serum\nfor all skin types",
                                                style: TextStyle(
                                                    fontSize: 16,
                                                    letterSpacing: 1.2,
                                                    color: Colors.grey
                                                        .withOpacity(0.6)),
                                              ),
                                              Spacer(),
                                              Padding(
                                                padding: const EdgeInsets.only(right: 24),
                                                child: Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[
                                                    Text(
                                                      "\$",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.grey),
                                                    ),
                                                    Text(
                                                      "17",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                    SizedBox(
                                                      width: 16,
                                                    ),
                                                    Icon(
                                                      Icons.star,
                                                      color: Colors.grey
                                                          .withOpacity(0.5),
                                                    ),
                                                    Text(
                                                      "4.5",
                                                      style: TextStyle(
                                                          fontSize: 18,
                                                          color: Colors.black),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                              Container(
                                                height: 38,
                                                padding: const EdgeInsets.symmetric(
                                                    horizontal: 4
                                                ),
                                                margin: const EdgeInsets.only(top: 16,
                                                    right: 32),
                                                decoration: BoxDecoration(
                                                    color: Colors.grey.withOpacity(0.3),
                                                    borderRadius: BorderRadius.circular(32)
                                                ),
                                                child:
                                                Row(
                                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                  children: <Widget>[

                                                    Text("Add to cart"),
                                                    IconButton(
                                                      padding:
                                                      EdgeInsets.zero,
                                                      icon: Icon(Icons.add,
                                                        color: Colors.green,
                                                        size: 16,),
                                                      onPressed: (){

                                                      },
                                                    )
                                                  ],
                                                ),
                                              )
                                            ],
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Expanded(
                    flex: 2,
                    child: Container(
                      margin: const EdgeInsets.all(8),
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      decoration: BoxDecoration(
                        color: Colors.lightGreen,
                        borderRadius: BorderRadius.circular(18),
                      ),
                      child: Row(
                        children: <Widget>[
                          Text(
                            "\$17",
                            style: TextStyle(color: Colors.white),
                          ),
                          SizedBox(
                            width: 24,
                          ),
                          Text(
                            "15-20 min",
                            style:
                                TextStyle(color: Colors.grey.withOpacity(0.6)),
                          ),
                          Spacer(),
                          Text(
                            "Pay",
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
