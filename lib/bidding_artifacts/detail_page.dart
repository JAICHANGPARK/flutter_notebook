import 'package:flutter/material.dart';

class CoinDetailPage extends StatefulWidget {
  @override
  _CoinDetailPageState createState() => _CoinDetailPageState();
}

class _CoinDetailPageState extends State<CoinDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
          left: 24,
        top: 70,
        child: Row(
          children: <Widget>[
            Icon(Icons.arrow_back_ios),
            Text("Home")
          ],
        ),
      ),
          Positioned(
            right: 0,
            top: 0,
            child: Transform.translate(
              offset: Offset(50, -50),
              child: Container(
                  height: 240,
                  width: 240,
                  decoration: BoxDecoration(),
                  child: Hero(
                    tag: "coin",
                    child: Container(
                      height: 180,
                      width: 180,
                      child: Image.network(
                        "https://www.preciousmetals.com/media/catalog/product/cache/1/image/326x/9df78eab33525d08d6e5fb8d27136e95/a/t/atg-stater-obv-trans_1.png",
                        fit: BoxFit.cover,

                      ),
                    ),
                  ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
