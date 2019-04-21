import 'package:flutter/material.dart';
import 'package:flutter_notebook/restaurant_review_app/restaurant_widget.dart';

class RestaurantReviewCloneApp extends StatelessWidget {
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
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Profile",
          style: TextStyle(
            color: Colors.grey,
          ),
        ),
        leading: Icon(
          Icons.arrow_back_ios,
          color: Colors.grey,
        ),
        actions: <Widget>[
          Padding(
            padding: EdgeInsets.only(right: 10.0),
            child: Icon(
              Icons.edit,
              color: Colors.grey,
            ),
          )
        ],
        elevation: 0,
        backgroundColor: Colors.transparent,
      ),
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: Align(
                  alignment: Alignment.topCenter,
                  child: Container(
                    height: 100.0,
                    width: 100.0,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50.0),
                        image: DecorationImage(
                            image: NetworkImage(
                              "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",
                            ),
                            fit: BoxFit.cover)),
                  ),
                ),
              ),
              Positioned(
                left: 230.0,
                top: 90.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(13),
                      color: Colors.white),
                  child: Icon(
                    Icons.fastfood,
                    color: Colors.red,
                    size: 14.0,
                  ),
                ),
              ),
            ],
          ),
          Column(
            children: <Widget>[
              SizedBox(
                height: 20.0,
              ),
              Text(
                'Dreamwalker',
                style: TextStyle(fontSize: 20.0, color: Colors.pink),
              ),
              SizedBox(
                height: 10.0,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Icon(
                    Icons.location_on,
                    color: Colors.grey,
                  ),
                  Text(
                    'Tokyo,Japan',
                    style: TextStyle(fontSize: 14.0, color: Colors.grey),
                  )
                ],
              )
            ],
          ),
          SizedBox(
            height: 15.0,
          ),
          Container(
            height: 100.0,
            width: double.infinity,
            color: Colors.grey.withOpacity(0.05),
            padding: EdgeInsets.only(top: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Text(
                      '217k',
                      style: TextStyle(fontSize: 14.0, color: Colors.red),
                    ),
                    Text(
                      'Followers',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '1',
                      style: TextStyle(fontSize: 14.0, color: Colors.red),
                    ),
                    Text(
                      'Following',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                ),
                Column(
                  children: <Widget>[
                    Text(
                      '12k',
                      style: TextStyle(fontSize: 14.0, color: Colors.red),
                    ),
                    Text(
                      'Taste Maker',
                      style: TextStyle(fontSize: 14.0, color: Colors.grey),
                    )
                  ],
                )
              ],
            ),
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: Colors.transparent,
            labelColor: Colors.pink,
            isScrollable: true,
            unselectedLabelColor: Colors.grey,
            tabs: <Widget>[
              Tab(
                child: Text(
                  "Restaurants",
                  style: TextStyle(fontSize: 20.0),
                ),
              ),
              Tab(
                child: Text(
                  "Wishlist",
                  style: TextStyle(fontSize: 20.0),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Container(
            height: MediaQuery.of(context).size.height - 450.0,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                new RestaurantWidget(),
                new RestaurantWidget(),
              ],
            ),
          )
        ],
      ),
    );
  }
}
