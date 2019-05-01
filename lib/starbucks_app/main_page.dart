import 'package:flutter/material.dart';

class StarbucksAppClone extends StatelessWidget {
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

class _HomePageState extends State<HomePage> {
  var selectedItem = 'All products';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(top: 15.0),
                child: IconButton(
                  onPressed: () {},
                  icon: Icon(Icons.arrow_back),
                  color: Colors.black,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15.0, right: 15.0),
                child: Stack(
                  children: <Widget>[
                    Container(
                      height: 50.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20.0),
                          color: Colors.transparent),
                    ),
                    Container(
                      height: 40.0,
                      width: 40.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(20.0),
                        color: Color(0xff116051),
                      ),
                      child: Center(
                        child: Icon(
                          Icons.add_shopping_cart,
                          color: Colors.white,
                          size: 20.0,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 25.0,
                      right: 30.0,
                      child: Container(
                        height: 20.0,
                        width: 20.0,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.0),
                          color: Colors.red,
                        ),
                        child: Center(
                          child: Text(
                            "10",
                            style: TextStyle(
                                fontFamily: 'Raleway', color: Colors.white),
                          ),
                        ),
                      ),
                    )
                  ],
                ),
              )
            ],
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: Text(
              "Starbucks Coffee",
              style: TextStyle(
                  fontFamily: 'Raleway',
                  fontSize: 22.0,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15.0, bottom: 15.0),
            child: Container(
              height: 100.0,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildItem("All products", 60),
                  _buildItem("Espresso", 8),
                  _buildItem("Recommend", 12),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, top: 15, bottom: 10),
            child: Container(
              height: MediaQuery.of(context).size.height - 280,
              child: ListView(
                scrollDirection: Axis.horizontal,
                children: <Widget>[
                  _buildCoffeeItem(
                      imgPath:
                          "https://d3vgbguy0yofad.cloudfront.net/resource/products/images/4524785384323_1_l.jpg",
                      productName: "シルバー ニードル ハイボール",
                      productType: "ICED",
                      price: "¥1,800"),

                  _buildCoffeeItem(
                      imgPath:
                      "https://d3vgbguy0yofad.cloudfront.net/resource/products/images/4524785344105_1_l.jpg",
                      productName: "ストロベリーベリーマッチフラペチーノ",
                      productType: "ICED",
                      price: "¥640"),

                  _buildCoffeeItem(
                      imgPath:
                      "https://d3vgbguy0yofad.cloudfront.net/resource/products/images/4524785377592_1_l.jpg",
                      productName: "ストロベリーベリーマッチフラペチーノ",
                      productType: "ICED",
                      price: "¥640"),


                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  _buildCoffeeItem(
      {String imgPath, String productName, String productType, String price}) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: 225.0,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                  color: Colors.grey.withOpacity(0.3),
                  spreadRadius: 4.0,
                  blurRadius: 4.0)
            ]),
        child: Stack(
          children: <Widget>[
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Container(
                  height: 200.0,
                  width: 225.0,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(15.0),
                          topRight: Radius.circular(15.0)),
                      image: DecorationImage(
                          image: NetworkImage(imgPath), fit: BoxFit.cover)),
                ),
                SizedBox(
                  height: 25.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    productName,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                    ),
                  ),
                ),
                SizedBox(
                  height: 5.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(
                    productType,
                    style: TextStyle(
                      fontFamily: 'Raleway',
                      color: Colors.grey,
                      fontSize: 14.0,
                    ),
                  ),
                ),
                SizedBox(height: 15.0,),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Container(
                    height: 0.4,
                    color: Colors.grey.withOpacity(0.4),
                  ),
                ),
                SizedBox(
                  height: 15.0,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, right: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        price,
                        style: TextStyle(
                            fontFamily: 'Raleway',
                            fontWeight: FontWeight.bold,
                            fontSize: 19.0
                        ),
                      ),
                      InkWell(
                        onTap: (){},
                        child: Container(
                          height: 40.0,
                          width: 40.0,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(15.0),
                            color: Colors.grey.withOpacity(0.2)
                          ),
                          child: Center(
                            child: Icon(
                              Icons.add,
                              color: Colors.grey,
                            ),
                          ),
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
    );
  }

  _buildItem(String productName, int count) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 10, 15, 10),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 500),
        curve: Curves.easeIn,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10.0),
            color: switchHighlight(productName),
            boxShadow: [
              BoxShadow(
                blurRadius: 4.0,
                spreadRadius: 2.0,
                color: switchShadow(productName),
              )
            ]),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: () {
            setState(() {
              selectedItem = productName;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(
                height: 10.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  count.toString(),
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17.0,
                      fontFamily: 'Raleway',
                      color: switchHighlightColor(productName)),
                ),
              ),
              SizedBox(
                height: 7.0,
              ),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                      fontFamily: 'Raleway',
                      fontSize: 15.0,
                      color: switchHighlightColor(productName)),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  switchHighlight(productName) {
    if (productName == selectedItem) {
      return Color(0xff116d51);
    } else {
      return Colors.grey.withOpacity(0.3);
    }
  }

  switchHighlightColor(prodName) {
    if (prodName == selectedItem) {
      return Colors.white;
    } else {
      return Colors.black;
    }
  }

  switchShadow(productName) {
    if (productName == selectedItem) {
      return Color(0xff116d51).withOpacity(0.4);
    } else {
      return Colors.transparent;
    }
  }
}
