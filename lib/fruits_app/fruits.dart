import 'package:flutter/material.dart';
import 'package:flutter_notebook/fruits_app/fruits_detail.dart';

class FruitsPage extends StatefulWidget {
  @override
  _FruitsPageState createState() => _FruitsPageState();
}

class _FruitsPageState extends State<FruitsPage> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Column(
              children: <Widget>[
                _getFoodCard('assets/img/picone.jpeg', "orange", '0.75', true),
                _getFoodCard('assets/img/pictwo.jpeg', 'kiwi', '0.25', false),
                _getFoodCard('assets/img/picthree.jpeg', 'banana', '0.25', true),
                SizedBox(
                  height: 15.0,
                )
              ],
            ),
            Column(
              children: <Widget>[
                SizedBox(
                  height: 25.0,
                ),
                _getFoodCard('assets/img/picfour.jpeg', "Pineapple", '0.25', true),
                _getFoodCard('assets/img/picfive.jpeg', 'Lemon', '0.25', false),
                _getFoodCard('assets/img/picone.jpeg', 'tomato', '0.25', true),
              ],
            )
          ],
        )
      ],
    );
  }

  Widget _getFoodCard(
      String imgPath, String fruitName, String price, bool isFav) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(MaterialPageRoute(
            builder: (context) =>
                FruitsDetailPage(imageTag: fruitName, imagePath: imgPath)));
      },
      child: Hero(
        tag: fruitName,
        child: Padding(
          padding:
              EdgeInsets.only(left: 10.0, right: 10.0, bottom: 10.0, top: 10.0),
          child: Container(
            height: 200.0,
            width: (MediaQuery.of(context).size.width / 2) - 20.0,
            decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10.0),
                boxShadow: [
                  BoxShadow(
                      blurRadius: 2.0,
                      color: Colors.grey.withOpacity(0.3),
                      spreadRadius: 2.0)
                ]),
            child: Column(
              children: <Widget>[
                Stack(
                  children: <Widget>[
                    Container(
                      height: 125.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(10.0),
                            topRight: Radius.circular(10.0)),
                        image: DecorationImage(
                            image: AssetImage(imgPath), fit: BoxFit.cover),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Align(
                        alignment: Alignment.topRight,
                        child: isFav
                            ? Icon(
                                Icons.favorite,
                                color: Colors.red,
                              )
                            : Icon(
                                Icons.favorite_border,
                                color: Colors.red,
                              ),
                      ),
                    )
                  ],
                ),
                SizedBox(
                  height: 15.0,
                ),
                Text(
                  fruitName,
                  style: TextStyle(
                    fontFamily: 'Montserrat',
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  '\$' + price + ' each',
                  style: TextStyle(
                      fontFamily: 'Montserrat',
                      fontSize: 14.0,
                      color: Colors.grey),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
