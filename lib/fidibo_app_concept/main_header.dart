import 'package:flutter/material.dart';

class MainHeader extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          color: Colors.white,
          height: 64.0,
        ),
        Positioned(
          left: 0.0,
          top: 16.0,
          child: Container(
            height: 64.0,
            child: Row(
              children: <Widget>[
                IconButton(
                  icon: Icon(
                    Icons.bookmark_border,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.share,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
                IconButton(
                  icon: Icon(
                    Icons.card_giftcard,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 8.0,
          top: 16.0,
          child: Container(
            height: 64.0,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 8.0),
                  child: Text(
                    'blablabla',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                ),
                IconButton(
                  icon: Icon(
                    Icons.arrow_forward,
                    color: Colors.grey,
                  ),
                  onPressed: () {},
                )
              ],
            ),
          ),
        ),


      ],
    );
  }
}
