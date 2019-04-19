import 'package:flutter/material.dart';

class CakeAndCloneApp extends StatelessWidget {
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
  TabController tabController;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white70,
      body: ListView(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 250.0,
                decoration: BoxDecoration(
                    borderRadius:
                        BorderRadius.only(bottomRight: Radius.circular(75.0)),
                    color: Color(0xfffd7465)),
              ),
              Container(
                height: 185.0,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.only(
                      bottomRight: Radius.circular(65.0),
                    ),
                    color: Colors.orange),
              ),
              Padding(
                padding: EdgeInsets.only(top: 35.0, left: 15.0),
                child: Text(
                  'Good Afternoon!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 75.0, left: 15.0),
                child: Text(
                  'Choose your favorite!',
                  style: TextStyle(
                      fontSize: 30.0,
                      color: Colors.white,
                      fontWeight: FontWeight.bold),
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 160.0,
                  left: 15.0,
                  right: 35.0,
                ),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                          bottomRight: Radius.circular(25.0),
                          bottomLeft: Radius.circular(5.0),
                          topLeft: Radius.circular(5.0))),
                  child: TextField(
                    decoration: InputDecoration(
                        border: InputBorder.none,
                        contentPadding: EdgeInsets.only(top: 14.0),
                        hintText: 'Search for your favorite',
                        hintStyle: TextStyle(
                          fontSize: 14.0,
                        ),
                        prefixIcon: Icon(
                          Icons.search,
                          color: Colors.grey,
                        )),
                  ),
                ),
              )
            ],
          ),
          TabBar(
            controller: tabController,
            indicatorColor: Colors.orange,
            indicatorSize: TabBarIndicatorSize.label,
            indicatorWeight: 4.0,
            isScrollable: true,
            labelColor: Colors.lime,
            unselectedLabelColor: Colors.white,
            tabs: <Widget>[
              Tab(
                child: Text(
                  'DESSERT',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text(
                  'PIZZA',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text(
                  'BARBECUE',
                  style: TextStyle(fontSize: 15.0),
                ),
              ),
              Tab(
                child: Text(
                  'DRINK',
                  style: TextStyle(fontSize: 15.0),
                ),
              )
            ],
          ),
          SizedBox(
            height: 10.0,
          ),
          Container(
            height: MediaQuery.of(context).size.height - 450.0,
            child: TabBarView(
              children: <Widget>[
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false),
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false)
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false),
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false)
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false),
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false)
                  ],
                ),
                ListView(
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false),
                    _foodCard(
                        "https://cdn.pixabay.com/photo/2014/07/08/12/34/pizza-386717_960_720.jpg",
                        'Strawberry Cream Waffles',
                        7.0,
                        273,
                        false)
                  ],
                )
              ],
              controller: tabController,
            ),
          ),
          SizedBox(
            height: 10.0,
          ),
          Padding(
            padding: EdgeInsets.only(left: 15.0),
            child: Text(
              'RECOMMEND',
              style: TextStyle(fontSize: 15.0),
            ),
          ),
          _listItem(
              "https://cdn.pixabay.com/photo/2016/01/22/02/13/meat-1155132_960_720.jpg",
              'Chocolate lemon cup cake',
              'The sour and sweetness of the lemon neutralizes the sweetness of the cream',
              '\$18.0',
              134,
              2412,
              '2-3per'),
          _listItem(
              "https://cdn.pixabay.com/photo/2016/01/22/02/13/meat-1155132_960_720.jpg",
              'Chocolate lemon cup cake',
              'The sour and sweetness of the lemon neutralizes the sweetness of the cream',
              '\$18.0',
              134,
              2412,
              '2-3per'),
        ],
      ),
    );
  }

  _listItem(String imgPath, String foodName, String desc, String price,
      int likes, int calCount, String serving) {
    return Padding(
      padding: EdgeInsets.only(left: 15.0, top: 15.0),
      child: Stack(
        children: <Widget>[
          Container(
            height: 170.0,
            width: MediaQuery.of(context).size.width,
          ),
          Positioned(
            left: 15.0,
            top: 30.0,
            child: Container(
              height: 125.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                  color: Color(0xFFF9EFEB),
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3.0,
                        blurRadius: 3.0)
                  ]),
              child: Text("Hellowold??"),
            ),
          ),
          Positioned(
            left: 95.0,
            top: 64.0,
            child: Container(
              height: 105.0,
              width: MediaQuery.of(context).size.width - 15.0,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5.0),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey.withOpacity(0.3),
                        spreadRadius: 3.0,
                        blurRadius: 3.0)
                  ]),
              child: Align(
                alignment: Alignment.bottomLeft,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 10.0, left: 10.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Icons.favorite,
                        color: Color(0xFFF75A4C),
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        likes.toString(),
                        style: TextStyle(color: Colors.grey, fontSize: 12.0),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Icon(
                        Icons.account_box,
                        color: Color(0xFFF75A4C),
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        calCount.toString() + 'cal',
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      ),
                      SizedBox(
                        width: 25.0,
                      ),
                      Icon(
                        Icons.play_circle_outline,
                        color: Colors.red,
                        size: 15.0,
                      ),
                      SizedBox(
                        width: 5.0,
                      ),
                      Text(
                        serving,
                        style: TextStyle(fontSize: 12.0, color: Colors.grey),
                      )
                    ],
                  ),
                ),
              ),
            ),
          ),
          Container(
            height: 125.0,
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: Colors.white,
            ),
            child: Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                children: <Widget>[
                  Image.network(
                    imgPath,
                    fit: BoxFit.cover,
                  ),
                  SizedBox(
                    width: 10.0,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        foodName,
                        style: TextStyle(color: Colors.black87, fontSize: 15.0),
                      ),
                      SizedBox(
                        height: 5.0,
                      ),
                      Container(
                        width: 175.0,
                        child: Text(
                          desc,
                          style:
                              TextStyle(color: Colors.black87, fontSize: 11.0),
                        ),
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Text(
                        price.toString(),
                        style: TextStyle(color: Colors.black87, fontSize: 15.0),
                      )
                    ],
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _foodCard(String imgPath, String foodName, double price, int calCount,
      bool hasMilk) {
    return Padding(
      padding: EdgeInsets.only(top: 8.0, left: 10.0, bottom: 10.0),
      child: Container(
        height: 100.0,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(7.0),
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.2),
                  blurRadius: 3.0,
                  spreadRadius: 3.0)
            ]),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Stack(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(left: 15.0, right: 15.0, top: 10.0),
                  child: Image.network(
                    imgPath,
                    fit: BoxFit.cover,
                    height: 100.0,
                    width: 100.0,
                  ),
                ),
                Positioned(
                  top: 92.0,
                  left: 60.0,
                  child: hasMilk
                      ? Container(
                          height: 15.0,
                          width: 55.0,
                          decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(
                                  color: Colors.orange,
                                  style: BorderStyle.solid,
                                  width: 0.25),
                              borderRadius: BorderRadius.circular(10.0)),
                          child: Center(
                            child: Text(
                              "with milk",
                              style: TextStyle(
                                  fontSize: 10.0, color: Colors.orange),
                            ),
                          ),
                        )
                      : Container(),
                )
              ],
            ),
            Container(
              width: 125.0,
              padding: EdgeInsets.only(left: 4.0),
              child: Text(
                foodName,
                style: TextStyle(fontSize: 15.0, color: Colors.black),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: Text(
                '\$' + price.toString(),
                style: TextStyle(color: Colors.black87),
              ),
            ),
            SizedBox(
              height: 10.0,
            ),
            Padding(
              padding: EdgeInsets.only(left: 4.0),
              child: Row(
                children: <Widget>[
                  Icon(
                    Icons.account_box,
                    color: Colors.black87,
                    size: 15.0,
                  ),
                  SizedBox(
                    width: 5.0,
                  ),
                  Text(
                    calCount.toString() + 'cal',
                    style: TextStyle(fontSize: 12.0, color: Colors.grey),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
