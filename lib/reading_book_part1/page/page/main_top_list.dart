


import 'package:flutter/material.dart';


class PageTopUi extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return  Container(
      height: 160.0,
      width: double.infinity,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          _buildTopListItem(16.0, Colors.blue, Colors.lightBlueAccent.withOpacity(0.5),
              "https://cdn.pixabay.com/photo/2014/05/22/16/57/man-351281_960_720.jpg"),
          _buildTopListItem(2.0, Colors.deepOrange, Colors.yellow,
              "https://cdn.pixabay.com/photo/2016/05/10/02/17/girl-1382947_960_720.jpg"),
        ],
      ),
    );
  }

  Widget _buildTopListItem(double horizontalPadding, Color gradation1,
      Color gradation2, String imgPath) {
    return Padding(
      padding:
      EdgeInsets.symmetric(vertical: 8.0, horizontal: horizontalPadding),
      child: Material(
        borderRadius: BorderRadius.circular(7.0),
        child: Container(
          height: 160.0,
          width: 240.0,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7.0),
              gradient: LinearGradient(
                  colors: [gradation1, gradation2],
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.0, 1.0],
                  tileMode: TileMode.clamp),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.2),
                  spreadRadius: 1.0,
                  blurRadius: 2.0,
                )
              ]),
          child: Row(
            children: <Widget>[
              Padding(
                padding: const EdgeInsets.only(left: 16.0),
                child: Container(
                  height: 120.0,
                  width: 80.0,
                  decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                            color: Colors.black.withOpacity(0.5),
                            spreadRadius: 1.0,
                            blurRadius: 3.0)
                      ],
                      image: DecorationImage(
                          image: NetworkImage(imgPath), fit: BoxFit.cover)),
                ),
              ),
              SizedBox(
                width: 8.0,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      "The Phantom",
                      style: TextStyle(
                          letterSpacing: 1.2,
                          color: Colors.white,
                          fontSize: 16.0),
                    ),
                    Text(
                      "Of The Opera",
                      style: TextStyle(
                          letterSpacing: 1.2,
                          wordSpacing: 3.0,
                          color: Colors.white,
                          fontSize: 16.0),
                    ),
                    SizedBox(
                      height: 8.0,
                    ),
                    Text(
                      "Book Author",
                      style: TextStyle(
                          color: Colors.white.withOpacity(0.4), fontSize: 14.0),
                    ),
                    SizedBox(
                      height: 16.0,
                    ),
                    Row(
                      children: <Widget>[
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20.0,
                        ),
                        Icon(
                          Icons.star,
                          color: Colors.white,
                          size: 20.0,
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
