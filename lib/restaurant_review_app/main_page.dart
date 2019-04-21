import 'package:flutter/material.dart';

class RestaurantReviewCloneApp extends StatelessWidget {
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
                      image: DecorationImage(image: 
                      NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",
                      ),
                      fit: BoxFit.cover)
                    ),
                  ),
                ),
              ),
              Positioned(
                left: 210.0,
                top: 70.0,
                child:Container(
                  
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}












