import 'package:flutter/material.dart';
import 'package:flutter_notebook/muji_app_clone/detail_page.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

const Color MujiColor = Color(0xff7f0019);

class TopItem {
  String imgPath;
  String title;
  String times;
  String likes;

  TopItem({this.imgPath, this.title, this.times, this.likes});
}

List<TopItem> topLists = [
  TopItem(
      imgPath: "https://www.muji.com/jp/img/panel/main/190510_t-shirt_pc.jpg",
      title: "オーガニックコットン１００％",
      times: "1 hours ago",
      likes: "60"),
  TopItem(
      imgPath:
          "https://www.muji.com/jp/img/store/panel/weeklymuji_640_190510.jpg",
      title: "基本の、白いTシャツ",
      times: "3 hours ago",
      likes: "63"),
  TopItem(
      imgPath: "https://www.muji.com/jp/img/store/panel/tax_640.png",
      title: "無印良品はこれからも消費税込み価格をつづけます",
      times: "1 hours ago",
      likes: "60"),
  TopItem(
      imgPath: "https://www.muji.com/jp/img/store/panel/curry_18ss_640.png",
      title: "無印良品のカレーとは",
      times: "1 hours ago",
      likes: "60"),
  TopItem(
      imgPath: "https://www.muji.com/img/flagship/ginza/ginza_main.jpg",
      title: "「無印良品 銀座」は、東京・銀座の並木通りに位置する世界旗艦店。",
      times: "1 hours ago",
      likes: "60"),
  TopItem(
      imgPath: "https://www.muji.com/jp/img/panel/main/190510_t-shirt_pc.jpg",
      title: "オーガニックコットン１００％",
      times: "1 hours ago",
      likes: "60"),
];

class FlutterMujiApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        '/': (BuildContext context) => HomePage(),
        '/detail/food' : (BuildContext context) => DetailFoodPage()
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
      //From Muji
      case 0:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
                height: MediaQuery.of(context).size.height * 0.8,
                width: MediaQuery.of(context).size.width,
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
                    Padding(
                      padding: const EdgeInsets.only(left: 8, right: 8),
                      child: StaggeredGridView.countBuilder(
                        crossAxisCount: 4,
                        itemCount: topLists.length,
                        itemBuilder: (context, index) {
                          return Container(
                              margin: const EdgeInsets.all(4),
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Colors.white,
                                  boxShadow: [
                                    BoxShadow(
                                        color: Colors.black12,
                                        blurRadius: 0.2,
                                        spreadRadius: 1.5,
                                        offset: Offset(0, 2))
                                  ]),
                              child: Column(
                                children: <Widget>[
                                  ClipRRect(
                                    borderRadius: BorderRadius.only(
                                        topLeft: Radius.circular(8),
                                        topRight: Radius.circular(8)),
                                    child: Image.network(
                                      topLists[index].imgPath,
                                      fit: BoxFit.cover,
                                      width:
                                          MediaQuery.of(context).size.width / 2,
                                      height: 200,
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      topLists[index].title,
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 16),
                                    ),
                                  ),
                                  Divider(
                                    color: Colors.black,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        left: 8, right: 8, bottom: 8),
                                    child: Row(
                                      children: <Widget>[
                                        Text(topLists[index].times),
                                        Icon(
                                          Icons.favorite_border,
                                          size: 16,
                                        ),
                                        Text(topLists[index].likes),
                                        Expanded(
                                          child: Container(),
                                        ),
                                        IconButton(
                                          icon: Icon(
                                            Icons.favorite_border,
                                            color: MujiColor,
                                            size: 40,
                                          ),
                                          onPressed: () {},
                                        )
                                      ],
                                    ),
                                  )
                                ],
                              ));
                        },
                        staggeredTileBuilder: (index) => StaggeredTile.fit(2),
//                            StaggeredTile.count(2, 3.5),
                        mainAxisSpacing: 16.0,
                        crossAxisSpacing: 6.0,
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
      // Shopping
      case 1:
        return Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: ListView(
              padding: const EdgeInsets.all(0),
              scrollDirection: Axis.vertical,
              children: <Widget>[
                Container(
                  decoration: BoxDecoration(color: Colors.white),
                  height: MediaQuery.of(context).size.height * 0.28,
                  width: MediaQuery.of(context).size.width,
                  child: Column(
                    children: <Widget>[
                      Padding(
                        padding:
                            const EdgeInsets.only(left: 8, right: 8, top: 8),
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.05,
                          width: double.infinity,
                          decoration: BoxDecoration(
                              color: Colors.white70,
                              borderRadius: BorderRadius.circular(4)),
                          child: TextField(
                            decoration: InputDecoration(
                              prefixIcon: Icon(Icons.search),
                              suffixIcon: Icon(Icons.code),
                              hintText: "商品名、商品番号を入力",
                            ),
                          ),
                        ),
                      ),
                      Divider(),
                      Container(
                        decoration: BoxDecoration(color: Colors.white),
                        height: MediaQuery.of(context).size.height * 0.1,
                        width: double.infinity,
                        child: Row(
                          children: <Widget>[
                            Padding(
                              padding: const EdgeInsets.only(
                                  top: 8, left: 16.0, right: 8),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: <Widget>[
                                  Text(
                                    "お近くの店舗",
                                    style: TextStyle(
                                      color: Colors.grey,
                                    ),
                                  ),
                                  Text(
                                    "Found MUJI 青山",
                                    style: TextStyle(fontSize: 20),
                                  )
                                ],
                              ),
                            ),
                            Expanded(
                              child: Container(),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(0, 8, 16, 8),
                              child: Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "806m",
                                  style: TextStyle(
                                      color: MujiColor,
                                      fontSize: 34,
                                      fontWeight: FontWeight.normal),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Divider(
                        color: Colors.grey,
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 8, right: 8),
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            Text(
                              "店舗を探す",
                              style: TextStyle(
                                color: Colors.black,
                                fontSize: 16,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            IconButton(
                              icon: Icon(
                                Icons.arrow_forward_ios,
                                color: Colors.grey,
                                size: 16,
                              ),
                              onPressed: () {},
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 16,
                ),
                InkWell(
                  onTap: (){
                    Navigator.pushNamed(context, '/detail/food');
                  },
                  child: Container(
                    height: 140,
                    width: MediaQuery.of(context).size.width,
                    decoration: BoxDecoration(color: Colors.white),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          top: 50,
                          left: 16,
                          child: Text(
                            "新商品",
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 20,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                        Positioned(
                          top: 8,
                          right: 8,
                          bottom: 8,
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: <Widget>[
                              Image.network(
                                "https://img.muji.net/img/item/4550002965730_01_180.jpg",
                                fit: BoxFit.cover,
                              ),
                              Image.network(
                                "https://img.muji.net/img/item/4550182213652_01_180.jpg",
                                fit: BoxFit.cover,
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8,
                        right: 8,
                        bottom: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.network(
                              "https://img.muji.net/img/item/4550002201661_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                            Image.network(
                              "https://img.muji.net/img/item/4549738979159_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                            Image.network(
                              "https://img.muji.net/img/item/4547315259625_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 16,
                        child: Text(
                          "毎日使うものを便利に",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 78,
                        left: 32,
                        child: Text(
                          "ネットストア限定",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 98,
                        left: 32,
                        child: Text(
                          "配送料無料",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8,
                        right: 8,
                        bottom: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.network(
                              "https://img.muji.net/img/item/4550182046786_01_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 100,
                              height: 100,
                            ),
                            Image.network(
                              "https://img.muji.net/img/item/4550002992163_01_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 100,
                              height: 100,
                            ),

                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 16,
                        child: Text(
                          "衣料品",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),

                    ],
                  ),
                ),
                SizedBox(
                  height: 8,
                ),
                Container(
                  height: 140,
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(color: Colors.white),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 8,
                        right: 8,
                        bottom: 8,
                        child: Row(
                          mainAxisSize: MainAxisSize.max,
                          children: <Widget>[
                            Image.network(
                              "https://img.muji.net/img/item/4550002201661_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                            Image.network(
                              "https://img.muji.net/img/item/4549738979159_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                            Image.network(
                              "https://img.muji.net/img/item/4547315259625_180.jpg",
                              fit: BoxFit.fitWidth,
                              width: 80,
                              height: 100,
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 50,
                        left: 16,
                        child: Text(
                          "衣料品",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 20,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 78,
                        left: 32,
                        child: Text(
                          "ネットストア限定",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Positioned(
                        top: 98,
                        left: 32,
                        child: Text(
                          "配送料無料",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 16,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ));
        break;
      case 2:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text("Page 2"),
          ),
        );
        break;
      case 3:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: Center(
            child: Text("Page 3"),
          ),
        );
        break;
      case 4:
        return Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
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
      width: MediaQuery.of(context).size.width,
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
            child: Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: Text(
                "ヘルプ",
                style: TextStyle(color: MujiColor, fontSize: 18),
              ),
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
      backgroundColor: Color(0xffeeeeee),
      body: Stack(
        children: <Widget>[
          Positioned(left: 0, right: 0, top: 0, child: _buildAppBar()),
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
