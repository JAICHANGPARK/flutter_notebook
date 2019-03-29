import 'package:flutter/material.dart';
import 'custom_icon.dart';

class ProductCard extends StatelessWidget {
  final int cardColor;
  final String imgUrl;
  final String title;
  final String previousPrice;
  final String price;


  ProductCard(this.cardColor, this.imgUrl, this.title, this.previousPrice,
      this.price);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 320,
      decoration: BoxDecoration(
        color: Color(cardColor),
        borderRadius: BorderRadius.circular(20.0),
        border: Border.all(color: Colors.grey.withOpacity(0.3), width: 0.2)
      ),
      child: Column(
        children: <Widget>[
          SizedBox(height: 8.0,),
          Image.asset(imgUrl, width: 280, height: 190,),
          Text(title, style: TextStyle(fontFamily: 'Montserrat', fontSize: 25),),
          SizedBox(height: 15.0,),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                IconButton(
                  icon: Icon(CustomIcons.favorite),
                  onPressed: (){},
                ),
                Column(
                  children: <Widget>[
                    Text(previousPrice,
                    style: TextStyle(
                      color: Color(0xfffeb0ba),
                      fontSize: 16.0,
                      fontFamily: 'Montserrat'
                    ),),
                    SizedBox(height: 8.0,),
                    Text(
                      price,
                      style: TextStyle(
                        fontSize: 28.0,
                        fontFamily: 'Montserrat'
                      ),
                    )
                  ],
                ),
                IconButton(
                  icon: Icon(CustomIcons.cart),
                  onPressed: (){},
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
