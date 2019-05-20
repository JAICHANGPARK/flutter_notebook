

import 'package:flutter/material.dart';

class DetailFoodPage extends StatefulWidget {
  @override
  _DetailFoodPageState createState() => _DetailFoodPageState();
}

class _DetailFoodPageState extends State<DetailFoodPage> {
  Color MujiColor = Color(0xff7f0019);

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
              child: IconButton(icon: Icon(Icons.shopping_cart,color: MujiColor,), onPressed: (){})
            ),
          )
        ],
      ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Positioned(
            top: 0,
            left: 0,
            right: 0,
            child: _buildAppBar(),
          )
        ],
      ),
    );
  }
}




















