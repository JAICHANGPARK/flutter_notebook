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
  var selectedItem = 'All Products';

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
              height: MediaQuery.of(context).size.height - 300,
              child: ListView(
                scrollDirection: Axis.horizontal,
              ),
            ),
          )
        ],
      ),
    );
  }
  _buildItem(String productName, int count){
    return Padding(
      padding: const EdgeInsets.fromLTRB(4, 10, 15, 10),
      child: AnimatedContainer(duration: Duration(milliseconds: 500),
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
        ]
      ),
        height: 50.0,
        width: 125.0,
        child: InkWell(
          onTap: (){
            setState(() {
              selectedItem = productName;
            });
          },
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              SizedBox(height: 10.0,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(count.toString(),
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 17.0,
                  fontFamily: 'Raleway',
                  color: switchHighlightColor(productName)
                ),),
              ),
              SizedBox(height: 7.0,),
              Padding(
                padding: const EdgeInsets.only(left: 10.0),
                child: Text(
                  productName,
                  style: TextStyle(
                    fontFamily: 'Raleway',
                    fontSize: 15.0,
                    color: switchHighlightColor(productName)
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  switchHighlight(productName){
    if(productName == selectedItem){
      return Color(0xff116d51);
    }else{
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
  switchShadow(productName){
    if(productName == selectedItem){
      return Color(0xff116d51).withOpacity(0.4);
    }else{
      return Colors.transparent;
    }
  }
}
