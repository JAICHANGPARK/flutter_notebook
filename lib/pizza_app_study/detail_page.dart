import 'package:flutter/material.dart';
import 'dart:ui';

import 'package:flutter_notebook/pizza_app_study/models/pizza.dart';

class Details extends StatelessWidget {
  final Pizza pizzaObject;

  Details(this.pizzaObject);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: ListView(
          children: <Widget>[
            Stack(
              children: <Widget>[
                ForegroundContent(
                  pizzaObject: pizzaObject,
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}

class ForegroundContent extends StatelessWidget {
  final Pizza pizzaObject;

  ForegroundContent({@required this.pizzaObject});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Align(
          alignment: Alignment.centerLeft,
          child: Padding(
            padding: const EdgeInsets.only(top: 70, left: 50),
            child: Container(
              child: GestureDetector(
                onTap: () {
                  Navigator.pop(context);
                },
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
          ),
        ),
        PizzaImage(pizzaObject.image),
        SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 105, right: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              TitleText(pizzaObject.name),
              SizedBox(
                height: 20.0,
              ),
              StarRating(pizzaObject.starRating),
              SizedBox(
                height: 20.0,
              ),
              Description(pizzaObject.desc),
              SizedBox(
                height: 20,
              ),
              Price(pizzaObject.price),
              SizedBox(
                height: 20,
              ),
              BottomButtons(),
              SizedBox(height: 35,)
            ],
          ),
        )
      ],
    );
  }
}

class PizzaImage extends StatelessWidget {
  final String imageURI;

  const PizzaImage(this.imageURI);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      width: 300,
      child: Image.asset(imageURI),
    );
  }
}
class TitleText extends StatelessWidget {
  final String pizzaName;
  final double _fontSize = 40;

  TitleText(this.pizzaName);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(children: [
        TextSpan(
            text: pizzaName,
            style: TextStyle(
                color: Colors.black,
                fontSize: _fontSize,
                fontFamily: 'slabo',
                fontWeight: FontWeight.w500)),
        TextSpan(
            text: " Pizza",
            style: TextStyle(
                color: Colors.black,
                fontSize: _fontSize,
                fontFamily: "slabo",
                fontWeight: FontWeight.w600))
      ]),
    );
  }
}
class StarRating extends StatelessWidget {
  final double rating;

  StarRating(this.rating);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Text(
          rating.toString(),
          style: TextStyle(fontWeight: FontWeight.w600, fontSize: 20),
        ),
        SizedBox(
          width: 5,
        ),
        Icon(
          Icons.star,
          color: Colors.yellow[600],
          size: 25,
        )
      ],
    );
  }
}
class Description extends StatelessWidget {
  final String desc;

  Description(this.desc);

  @override
  Widget build(BuildContext context) {
    return Text(
      desc,
      softWrap: true,
      style: TextStyle(
          color: Colors.black87,
          letterSpacing: 1.3,
          fontSize: 17,
          textBaseline: TextBaseline.alphabetic),
    );
  }
}
class Price extends StatelessWidget {
  final double price;
  Price(this.price);

  @override
  Widget build(BuildContext context) {
    return Text(
      "\$$price",
      style: TextStyle(
        color: Colors.black,
        fontSize: 25,
        fontWeight: FontWeight.w700
      ),
    );
  }
}

class BottomButtons extends StatefulWidget {
  @override
  _BottomButtonsState createState() => _BottomButtonsState();
}

class _BottomButtonsState extends State<BottomButtons> {
  bool isFav = false;
  bool isCart = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isFav = false;
    isCart = false;
  }
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: <Widget>[
        Container(
          decoration: BoxDecoration(
            border: Border(
              bottom: BorderSide(
                color: Colors.black,
                width: 5
              )
            )
          ),
          child: FlatButton(onPressed: (){
            setState(() {
              isCart = !isCart;
            });
          }, child: Text(
            isCart ? "Remove from Cart" : "Add to cart",
            style: TextStyle(
              fontWeight: FontWeight.w800,
              fontSize: 18.0
            ),
          )),
        ),
        FloatingActionButton(
          onPressed: (){
            setState(() {
              isFav = !isFav;
            });
          },
          child: Icon(
            isFav ? Icons.favorite : Icons.favorite_border,
            color: isFav? Colors.red : Colors.black,
          ),
          backgroundColor: Colors.white,
          elevation: 3,
        )
      ],
    );
  }
}




















