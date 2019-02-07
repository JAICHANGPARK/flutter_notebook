import 'package:flutter/material.dart';

class MainHeaderTest extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Row(
            children: <Widget>[
              IconButton(
                icon: Icon(
                  Icons.bookmark_border,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.share, color: Colors.grey),
                onPressed: () {},
              ),
              IconButton(
                icon: Icon(Icons.card_giftcard, color: Colors.grey),
                onPressed: () {},
              ),
            ],
          ),
          Row(
            children: <Widget>[
              Text("BlaBla"),
//                    IconButton(icon: Icon(Icons.bookmark_border, color: Colors.grey,),onPressed: (){},),
              IconButton(
                icon: Icon(
                  Icons.arrow_forward,
                  color: Colors.grey,
                ),
                onPressed: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}
