import 'package:flutter/material.dart';
import 'package:bubble_tab_indicator/bubble_tab_indicator.dart';
class FurnitureAppExperience extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
with SingleTickerProviderStateMixin{
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
      backgroundColor: Color(0xfff1f1f1),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: deviceHeight / 2.5,
              width: deviceWidth,
              decoration: BoxDecoration(),
              child: Stack(
                fit: StackFit.expand,
                children: <Widget>[
                  Positioned(
                    left: 0,
                    right: 84,
                    top: 0,
                    child: Container(
                      height: (deviceHeight / 2) - 80,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(64),
                        ),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.only(top: 48, left: 56),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Matilda", style: TextStyle(
                              color: Colors.black,
                              fontWeight: FontWeight.bold,
                              fontSize: 24,
                            ),),
                            SizedBox(height: 8,),
                            Text("Maxmilan", style: TextStyle(
                              color: Colors.black,
                              fontSize: 24,
                            ),),
                            SizedBox(height: 16,),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: <Widget>[
                                Icon(Icons.location_on),
                                SizedBox(width: 8,),
                                Text("Las vegas")
                              ],
                            ),
                            SizedBox(height: 24,),
                            Row(
                              children: <Widget>[
                                Container(
                                  height: deviceHeight / 10,
                                  width: deviceWidth / 4.5,
                                  decoration: BoxDecoration(
                                    color: Colors.yellow,
                                    borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text("18",style: TextStyle(
                                          fontWeight: FontWeight.w700,
                                        fontSize: 18
                                      ),),
                                      SizedBox(height: 8,),
                                      Text("Cart Items")
                                    ],
                                  ),
                                ),
                                SizedBox(width: 16,),
                                Container(
                                  height: deviceHeight / 10,
                                  width: deviceWidth / 4.5,
                                  decoration: BoxDecoration(
                                      color: Colors.yellow,
                                      borderRadius: BorderRadius.circular(16)
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: <Widget>[
                                      Text("22",style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                          fontSize: 18
                                      ),),
                                      SizedBox(height: 8,),
                                      Text("Wish list")
                                    ],
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 24,
                    top: 24,
                    child: Container(
                      height: 34,
                      width: 34,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(8)),
                      child: Center(
                        child: IconButton(
                          icon: Icon(Icons.search),
                          onPressed: () {},
                          padding: EdgeInsets.zero,
                          iconSize: 18,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    right: 48,
                    top: 88,
                    child: Container(
                      height: 72,
                      width: 72,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(16),
                          image: DecorationImage(
                              image: NetworkImage(""
                                  "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"))),
                    ),
                  )
                ],
              ),
            ),
            SizedBox(height: 32,),
            Container(
              height: deviceHeight / 9,
              decoration: BoxDecoration(
              ),
              child: TabBar(
                unselectedLabelColor: Colors.black,
                controller: _tabController,
                indicatorSize: TabBarIndicatorSize.tab,
                indicator: new BubbleTabIndicator(
                  indicatorHeight: 34.0,
                  indicatorColor: Colors.black,
                  tabBarIndicatorSize: TabBarIndicatorSize.tab,
                ), tabs: <Widget>[
                  Tab(text: "Polular",),
                Tab(text: "New arrivals",),
                Tab(text: "Cultural ae?",),
              ],
              ),
            ),
            Container(
              height: deviceHeight / 2.5,
              child: TabBarView(
                controller: _tabController,
                children: <Widget>[
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                          right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                    image: DecorationImage(image:
                                    NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    child: ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      children: <Widget>[
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 16,
                              right: 16, top: 72, bottom: 16),
                          height: deviceHeight / 2.8,
                          width: deviceWidth/2,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(32)
                          ),
                          child: Column(
                            children: <Widget>[
                              Transform.translate(

                                child: Container(
                                  height: 160,
                                  width: 120,
                                  decoration: BoxDecoration(
                                      image: DecorationImage(image:
                                      NetworkImage("https://www.albarokahfurniture.com/wp-content/uploads/2018/09/Kursi-Tamu-Retro.png"))
                                  ),
                                ), offset: Offset(64, -64),
                              ),
                              Transform.translate(offset: Offset(0, -32),child: Text("Trends Black Visitor Chair")),
                              Transform.translate(
                                offset: Offset(0, -16),
                                child: Padding(
                                  padding: const EdgeInsets.only(left: 16, right: 16),
                                  child: Row(
                                    children: <Widget>[
                                      Icon(Icons.star, color: Colors.yellow,),
                                      Text("4.5"),
                                      Expanded(child: Container(),),
                                      Text("\$ 94",style: TextStyle(
                                        fontSize: 24,
                                        fontWeight: FontWeight.bold,
                                      ),)
                                    ],
                                  ),
                                ),
                              )
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            )

          ],
        ),
      ),
    );
  }
}















