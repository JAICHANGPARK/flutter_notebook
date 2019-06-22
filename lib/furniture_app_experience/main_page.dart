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
    _tabController = TabController(length: 3, vsync: this);
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    var deviceHeight = MediaQuery.of(context).size.height;
    var deviceWidth = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: Colors.white70,
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            Container(
              height: deviceHeight / 2,
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
            TabBar(
              controller: _tabController,
              indicatorSize: TabBarIndicatorSize.tab,
              indicator: new BubbleTabIndicator(
                indicatorHeight: 25.0,
                indicatorColor: Colors.blueAccent,
                tabBarIndicatorSize: TabBarIndicatorSize.tab,
              ), tabs: <Widget>[
                Tab(text: "Polular",),
              Tab(text: "Polular",),
              Tab(text: "Polular",),
            ],
            ),
            
          ],
        ),
      ),
    );
  }
}
