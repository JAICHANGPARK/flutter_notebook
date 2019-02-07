


import 'package:flutter/material.dart';



class MainMidInformation extends StatelessWidget {

  Widget _buildRatingBar(int starRating) {
    var stars = <Widget>[];

    for (var i = 1; i <= 5; i++) {
      var color = (i <= starRating) ? Colors.yellow : Colors.grey;

      var star = Icon(
        Icons.star,
        color: color,
      );

      stars.add(star);
    }

    //TODO FIXED
    stars = stars.reversed.toList();

    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: stars,
    );
  }


  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: <Widget>[
        Container(
          height: 210.0,
          color: Colors.white,
        ),
        Positioned(
          right: 16.0,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 200,
              width: 120.0,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(16.0),
                  image: DecorationImage(
                      image: NetworkImage(
                          "https://marketplace.canva.com/MACAEgi3V4g/1/0/thumbnail_large/canva-happy-kid-children-book-MACAEgi3V4g.jpg"),
                      fit: BoxFit.cover)),
            ),
          ),
        ),

        Positioned(
          top: 8.0,
          right: 170.0,
          child: Container(
            height: 240.0,
            width: 300.0,
            child: Padding(
              padding: const EdgeInsets.symmetric(
                  vertical: 8.0, horizontal: 8.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  Text("Book Title", style: TextStyle(
                      fontSize: 16.0
                  ),),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Book Subtitle",
                      style: TextStyle(color: Colors.grey,
                          fontSize: 12.0),
                    ),
                  ),
                  _buildRatingBar(4),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(right: 8.0),
                        child: Chip(
                          label: Text("category1"),
                          labelStyle:
                          Theme.of(context).textTheme.caption,
                          backgroundColor: Colors.grey.withOpacity(0.2),
                        ),
                      ),
                      Chip(
                        label: Text("category2"),
                        labelStyle: Theme.of(context).textTheme.caption,
                        backgroundColor: Colors.grey.withOpacity(0.2),
                      )
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8.0),
                    child: Text(
                      "Book ~~~",
                      style: TextStyle(color: Colors.grey),
                    ),
                  ),
                  Text(
                    "Book Subtitle",
                    style: TextStyle(
                        letterSpacing: 1.5,
                        color: Colors.cyan,
                        fontWeight: FontWeight.bold),
                  ),

                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
