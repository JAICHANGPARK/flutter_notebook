import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const Color MujiColor = Color(0xff7f0019);

class FlutterMujiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => HomePage(),
      },
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
  int pageIndex = 0;

  Widget _buildMainPageWidget(index) {
    switch (index) {
      case 0:
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Column(
            children: <Widget>[
              Container(
                color: Color(0xfffafafa),
                height: 30,
                child: TabBar(
                  onTap: (newValue) {},
                  labelStyle: TextStyle(
                    fontSize: 11,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelStyle: TextStyle(
                    fontSize: 10,
                    fontWeight: FontWeight.bold,
                  ),
                  labelColor: MujiColor,
                  isScrollable: false,
                  indicatorColor: MujiColor,
                  unselectedLabelColor: Colors.grey,
                  controller: _tabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  tabs: <Widget>[
                    Tab(
//                  text: "Top",
                      child: Text(
                        "フォローしている店舗",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Tab(
//                  text: "Camp",
                      child: Text(
                        "トップ",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                    Tab(
//                  text: "Camp",
                      child: Text(
                        "キャンペーン／商品",
                        style: TextStyle(fontSize: 10),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery
                    .of(context)
                    .size
                    .height * 0.8,
                width: MediaQuery
                    .of(context)
                    .size
                    .width,
                child: TabBarView(
                  controller: _tabController,
                  children: <Widget>[
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: 8,
                        itemBuilder: (context, index) {
                          return Container(
                            color: MujiColor,
                            child: Center(
                              child: CircleAvatar(
                                backgroundColor: Colors.white,
                                child: Text('$index'),
                              ),
                            ),
                          );
                        },
                        staggeredTileBuilder: (index) =>

                      StaggeredTile.count(2, index.isEven ? 2 : 1),
                        mainAxisSpacing: 4.0,
                        crossAxisSpacing: 4.0,
                      ),
                    ),
                    StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          color: MujiColor,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text('$index'),
                            ),
                          ),
                        );
                      },
                      staggeredTileBuilder: (index) =>
                          StaggeredTile.count(4, index.isEven ? 2 : 1),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),
                    StaggeredGridView.countBuilder(
                      crossAxisCount: 4,
                      itemCount: 8,
                      itemBuilder: (context, index) {
                        return Container(
                          color: MujiColor,
                          child: Center(
                            child: CircleAvatar(
                              backgroundColor: Colors.white,
                              child: Text('$index'),
                            ),
                          ),
                        );
                      },
                      staggeredTileBuilder: (index) =>
                          StaggeredTile.count(2, index.isEven ? 2 : 1),
                      mainAxisSpacing: 4.0,
                      crossAxisSpacing: 4.0,
                    ),


                  ],
                ),
              )
            ],
          ),
        );
        break;

      case 1:
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Center(
            child: Text("Page1"),
          ),
        );
        break;
      case 2:
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Center(
            child: Text("Page 2"),
          ),
        );
        break;
      case 3:
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Center(
            child: Text("Page 3"),
          ),
        );
        break;
      case 4:
        return Container(
          height: MediaQuery
              .of(context)
              .size
              .height,
          width: MediaQuery
              .of(context)
              .size
              .width,
          child: Center(
            child: Text("Page 4"),
          ),
        );
        break;
    }
  }

  Widget _buildAppBar() {
    return Container(
      height: 80,
      width: MediaQuery
          .of(context)
          .size
          .width,
      decoration: BoxDecoration(
        color: Color(0xfffafafa),
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            icon: Icon(
              Icons.menu,
              color: MujiColor,
              size: 30,
            ),
            onPressed: () {},
          ),
          Image.network(
            "https://www.muji.com/jp/passport/img/logo.png",
            height: double.infinity,
            width: 100,
            fit: BoxFit.fitWidth,
          ),
          InkWell(
            onTap: () {},
            child: Text(
              "ヘルプ",
              style: TextStyle(color: MujiColor, fontSize: 18),
            ),
          )
        ],
      ),
    );
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Stack(
        children: <Widget>[
          Positioned(
              left: 0,
              right: 0,
              top: 0,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: _buildAppBar(),
              )),
          Positioned(
              top: 80,
              left: 0,
              right: 0,
              child: _buildMainPageWidget(pageIndex)),
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
          backgroundColor: Color(0xfffafafa),
          currentIndex: pageIndex,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: MujiColor,
          onTap: (newIndex) {
            setState(() {
              print(newIndex);
              pageIndex = newIndex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.star),
              title: Text("fromMuji"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.shopping_basket),
              title: Text("お買い物"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.location_on),
              title: Text("チャックイン"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.favorite),
              title: Text("お気に入り"),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.person_pin),
              title: Text("会員証"),
            ),
          ]),
    );
  }
}
