import 'package:flutter/material.dart';
import 'package:flutter_notebook/goutmet_takeapp/home_mid_ui.dart';

class GourmetPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage>
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
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                width: double.infinity,
                decoration: BoxDecoration(
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.2),
                      spreadRadius: 4.0,
                      blurRadius: 2.0,
                    ),
                  ],
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: IconButton(
                  icon: Icon(Icons.settings),
                  onPressed: () {},
                  color: Colors.black,
                ),
              ),
              Positioned(
                top: 50.0,
                left: 15.0,
                child: Row(
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      width: 125.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(62.5),
                          image: DecorationImage(
                              image: NetworkImage(""
                                  "https://cdn.pixabay.com/photo/2015/03/23/05/47/nikon-lens-685595_960_720.jpg"),
                              fit: BoxFit.cover)),
                    ),
                    SizedBox(
                      width: 15.0,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Takahashi rinka",
                          style: TextStyle(
                              fontSize: 25.0,
                              fontWeight: FontWeight.bold,
                              color: Colors.deepOrange),
                        ),
                        SizedBox(
                          height: 15.0,
                        ),
                        Row(
                          children: <Widget>[
                            Icon(
                              Icons.location_on,
                              color: Color(0xffc6cc40),
                            ),
                            Container(
                              width: MediaQuery.of(context).size.width - 175.0,
                              child: Text(
                                "Minato-ku, 4-51-2",
                                style: TextStyle(
                                  fontSize: 14.0,
                                  color: Colors.grey,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width - 175.0,
                          child: Text(
                            "Roppongi, Tokyo, Japan",
                            style: TextStyle(
                              fontSize: 14.0,
                              color: Colors.grey,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 200.0),
                child: TabBar(
                  indicatorSize: TabBarIndicatorSize.label,
                  controller: _tabController,
                  indicatorColor: Colors.deepOrangeAccent,
                  labelColor: Colors.deepOrangeAccent,
                  unselectedLabelColor: Colors.grey,
                  isScrollable: true,
                  indicatorWeight: 4.0,
                  tabs: <Widget>[
                    Tab(
                      child: Text(
                        "Guess you like",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "News",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                    Tab(
                      child: Text(
                        "Others",
                        style: TextStyle(fontSize: 20.0),
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
          Container(
            height: MediaQuery.of(context).size.height - 275.0,
            child: TabBarView(
              children: <Widget>[
                HomeMidUi(),
                HomeMidUi(),
                HomeMidUi(),
              ],
              controller: _tabController,
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomAppBar(
        child: Row(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            IconButton(icon: Icon(Icons.home, color: Colors.grey, ), onPressed: () {},),
            IconButton(icon: Icon(Icons.favorite, color: Colors.grey), onPressed: () {},),
            IconButton(icon: Icon(Icons.fiber_new, color: Colors.grey), onPressed: () {},),
            IconButton(icon: Icon(Icons.person, color: Colors.grey), onPressed: () {},),
          ],
        ),
        shape: CircularNotchedRectangle(),
        color: Colors.white,
      ),

      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor: Colors.deepOrange,
        tooltip: 'Increment',
        child: Icon(Icons.add_shopping_cart,color: Colors.white,),
        elevation: 2.0,
      ),
    );
  }
}
























