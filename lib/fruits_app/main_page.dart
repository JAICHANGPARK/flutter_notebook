import 'package:flutter/material.dart';
import 'package:flutter_notebook/fruits_app/fruits.dart';

class FruitsApp extends StatelessWidget {
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

class _MainPageState extends State<MainPage>
    with SingleTickerProviderStateMixin {
  TabController _tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: ListView(
        children: <Widget>[
          Container(
            padding: EdgeInsets.only(
                top: 10.0, right: 15.0, bottom: 10.0, left: 15.0),
            width: MediaQuery.of(context).size.width,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Container(
                  height: 40.0,
                  width: 40.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                        image: NetworkImage(
                            "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                        fit: BoxFit.cover),
                  ),
                ),
                IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  iconSize: 27.0,
                  onPressed: () {},
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(top: 20.0),
            child: TabBar(
              controller: _tabController,
              indicatorColor: Colors.transparent,
              labelColor: Colors.black,
              unselectedLabelColor: Colors.grey.withOpacity(0.6),
              isScrollable: true,
              tabs: <Widget>[
                Tab(
                  child: Text(
                    'Fruits',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Bread',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Drink',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                ),
                Tab(
                  child: Text(
                    'Others',
                    style: TextStyle(
                        fontSize: 33.0,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                )
              ],
            ),
          ),
          Container(
            height: MediaQuery.of(context).size.height - 200.0,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                FruitsPage(),
                FruitsPage(),
                FruitsPage(),

              ],
            ),
          )
        ],
      ),

      bottomNavigationBar: Material(
        child: Container(
          decoration: BoxDecoration(
            color: Colors.white,
          ),
          height: 60.0,
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Container(
                padding: EdgeInsets.only(bottom: 5.0),
                child: Text('Filters',
                style: TextStyle(
                  fontFamily: 'Montserrat',
                  fontWeight: FontWeight.bold,
                  fontSize: 15.0
                ),),
                decoration: BoxDecoration(
                  border: Border(bottom:
                  BorderSide(
                    color: Colors.black,
                    style: BorderStyle.solid,
                    width: 1.0
                  ))
                ),
              ),

              Icon(
                Icons.search,
                color: Colors.black,
                size: 25.0,
              ),
              Icon(
                Icons.favorite_border,
                color: Colors.black,
                size: 25.0,
              ),
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(25.0),
                  color: Colors.cyanAccent,
                ),
                height: 45.0,
                width: 65.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: <Widget>[
                    Text('12',
                    style: TextStyle(
                      fontSize: 15.0,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      fontFamily: 'Montserrat'
                    ),),
                    Icon(
                      Icons.shopping_cart,
                      color: Colors.white,
                      size: 15.0,
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}













