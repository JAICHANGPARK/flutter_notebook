import 'package:flutter/material.dart';
import 'package:flutter_notebook/shoes_app_02/ui/card_product.dart';

class BrandApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  int _currentIndex = 0;
  List<Widget> bottomNavigationIconList = [
    Icon(Icons.home),
    Icon(Icons.shopping_cart),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
//      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 30),
          child: Column(
            children: <Widget>[
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: const EdgeInsets.only(top: 30, bottom: 25),
                  child: Image.network(
                    "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4",
                    width: 62,
                    height: 62.0,
                  ),
                ),
              ),
              ProductCard(0xfffaecfb, 'assets/shoes_01.png', "Boost ", "\$799.9", "\$299.9"),

            ],
          ),
        ),
      ),
      bottomNavigationBar: Container(
        height: 70.0,
        decoration: BoxDecoration(color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black12.withOpacity(0.065),
            offset: Offset(0.0, -7.0),
            blurRadius: 10.0
          )
        ]),
        child: Row(
          children: bottomNavigationIconList.map((item){
            var index = bottomNavigationIconList.indexOf(item);
            return Expanded(
              child: GestureDetector(
                onTap: (){
                  setState(() {
                    _currentIndex = index;
                  });
                },
                child: bottomNavigationItem(item, index == _currentIndex),
              ),
            );
          }).toList(),
        ),
      ),
    );
  }

  bottomNavigationItem(Widget item, bool param1) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: param1 ? [
          BoxShadow(
            color: Colors.black12.withOpacity(0.02),
            offset: Offset(0.0, 5.0),
            blurRadius: 10.0
          )
        ] : [],
      ),
      child: item,
    );

  }
}
















