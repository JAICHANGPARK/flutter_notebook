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
    );
  }
}
