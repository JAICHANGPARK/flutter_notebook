import 'package:flutter/material.dart';
import 'package:flutter_notebook/railyatri/state_management/bottom_navigation_provider.dart';
import 'package:provider/provider.dart';

class Railyatri extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: ChangeNotifierProvider<BottomNavigationBarProvider>(
        child: MainPage(),
        builder: (context) => BottomNavigationBarProvider(),
      ),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  var selectedTab = [
    HomePage(),
    SearchPage(),
    OffersPage(),
    CartPage(),
  ];

  @override
  Widget build(BuildContext context) {
    var provider = Provider.of<BottomNavigationBarProvider>(context);
    return Scaffold(
      body: selectedTab[provider.currentIndex],
      bottomNavigationBar: BottomNavigationBar(
          unselectedItemColor: Colors.grey,
          selectedIconTheme: IconThemeData(color: Colors.redAccent),
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.redAccent,
          currentIndex: provider.currentIndex,
          onTap: (index) {
            provider.currentIndex = index;
          },
          items: [
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food")),
            BottomNavigationBarItem(
                icon: Icon(Icons.fastfood), title: Text("Food"))
          ]),
      floatingActionButton: FloatingActionButton.extended(
        backgroundColor: Colors.red,
        onPressed: () {},
        label: Text("Menu"),
        isExtended: true,
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> with TickerProviderStateMixin {
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
      appBar: AppBar(
        backgroundColor: Colors.white,
        iconTheme: IconThemeData(color: Colors.black),
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              "Coimbatore Express",
              style: TextStyle(color: Colors.red, fontSize: 16),
            ),
            Text(
              "Pune-Bangalore",
              style: TextStyle(color: Colors.grey, fontSize: 14),
            )
          ],
        ),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.phone),
            onPressed: () {},
          )
        ],
      ),
      drawer: Drawer(),
      body: Column(
        children: <Widget>[
          _buildTopLabel(),
          _buildTopCardList(),
          _buildTabBarWidget(),
          Container(
            height: 360,
            child: TabBarView(
              controller: _tabController,
              children: <Widget>[
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                ),
                ListView(
                  scrollDirection: Axis.vertical,
                  shrinkWrap: true,
                  children: <Widget>[
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      height: 120,
                      margin: EdgeInsets.only(left: 8, right: 8, top: 8, bottom: 8),
                      decoration: BoxDecoration(),
                      child: Row(
                        children: <Widget>[
                          Container(
                            height: 100,
                            width: 100,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2016/10/15/19/14/japan-1743370__340.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          SizedBox(
                            width: 16,
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Column(
                              mainAxisSize: MainAxisSize.max,
                              mainAxisAlignment: MainAxisAlignment.start,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: <Widget>[
                                Text(
                                  "Veg Delux Thali",
                                  style: TextStyle(
                                      fontSize: 14, fontWeight: FontWeight.bold),
                                ),
                                Text(
                                  "Paneer veg, seasonal veg, dal, roti,",
                                  style: TextStyle(fontSize: 12, color: Colors.grey),
                                ),
                                Row(
                                  children: <Widget>[
                                    Text("INR 189"),
                                    SizedBox(
                                      width: 84,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: OutlineButton(
                                        onPressed: () {},
                                        shape: OutlineInputBorder(
                                            borderRadius: BorderRadius.circular(8)),
                                        borderSide: BorderSide(color: Colors.red),
                                        child: Text(
                                          "ADD",
                                          style: TextStyle(
                                              color: Colors.red,
                                              fontWeight: FontWeight.bold),
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                                Container(
                                  height: 1,
                                  width: 240,
                                  decoration: BoxDecoration(color: Colors.grey),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    )

                  ],
                )
              ],
            ),
          ),
         
        ],
      ),
    );
  }

  Widget _buildTopLabel() {
    return Container(
      height: 32,
      decoration: BoxDecoration(border: Border.all(color: Colors.grey)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            "Delivering at 11:30 PM, Today",
            style: TextStyle(color: Colors.black, fontSize: 12),
          ),
          SizedBox(
            width: 16,
          ),
          Text(
            "change",
            style: TextStyle(color: Colors.red, fontSize: 12),
          )
        ],
      ),
    );
  }

  Widget _buildTopCardList() {
    return Container(
      height: 160,
      child: ListView(
        shrinkWrap: true,
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Container(
            width: 140,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/03/30/15/46/churros-2188869__340.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "LET THE",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "FEAST BEFIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Disccount up to \$300",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 140,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/03/30/15/46/churros-2188869__340.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "LET THE",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "FEAST BEFIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Disccount up to \$300",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 140,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/03/30/15/46/churros-2188869__340.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "LET THE",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "FEAST BEFIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Disccount up to \$300",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Container(
            width: 140,
            margin: const EdgeInsets.all(8),
            decoration: BoxDecoration(
                color: Colors.grey,
                borderRadius: BorderRadius.circular(8),
                image: DecorationImage(
                    image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2017/03/30/15/46/churros-2188869__340.jpg"),
                    fit: BoxFit.cover)),
            child: Column(
              children: <Widget>[
                Container(
                  height: 80,
                  padding: EdgeInsets.all(4),
                  decoration:
                      BoxDecoration(color: Colors.black.withOpacity(0.4)),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      Text(
                        "LET THE",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "FEAST BEFIN",
                        style: TextStyle(color: Colors.white),
                      ),
                      Text(
                        "Disccount up to \$300",
                        style: TextStyle(color: Colors.white),
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildTabBarWidget() {
    return Container(
      height: 48,
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey),
      ),
      child: Row(
        children: <Widget>[
          Expanded(
            flex: 9,
            child: TabBar(
                indicatorColor: Colors.red,
                labelColor: Colors.red,
                unselectedLabelColor: Colors.grey,
                controller: _tabController,
                labelStyle:
                    TextStyle(fontSize: 13, fontWeight: FontWeight.bold),
                tabs: [
                  Tab(
                    text: "Thali Meals",
                  ),
                  Tab(
                    text: "Bread Combo",
                  ),
                  Tab(
                    text: "Biryani & Rice",
                  )
                ]),
          ),
          Expanded(
            flex: 1,
            child: Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.grey),
              ),
              child: Center(
                child: Icon(Icons.swap_horiz),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class TopCardClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    // TODO: implement getClip
    var paint = Paint();
    var path = Path();
    path.lineTo(0, size.height - 24);

    var firstControlPoint = new Offset(size.width / 4, size.height / 2);
    var firstEndPoint = new Offset(size.width / 1.8, size.height / 4);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);
    path.lineTo(size.width, size.height / 3.5);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    // TODO: implement shouldReclip
    return false;
  }
}

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Search Page"),
      ),
    );
  }
}

class OffersPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Offers Page"),
      ),
    );
  }
}

class CartPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text("Cart Page"),
      ),
    );
  }
}
