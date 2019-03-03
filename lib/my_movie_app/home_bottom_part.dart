import 'package:flutter/material.dart';

class HomeBottomPart extends StatelessWidget {
  List<String> imgUrl = [
    "https://occ-0-1007-2794.1.nflxso.net/art/424df/608de21c697b612e00ef851052ccba447c7424df.jpg",
    "https://occ-0-1007-2794.1.nflxso.net/art/75542/cc3e412d8e66f8f4de0476eb37a23a63b0875542.jpg",
    "https://occ-0-1007-2794.1.nflxso.net/art/89271/5e8b75f4582aac66f780664a86025992b4a89271.jpg",
    "https://occ-0-1007-2794.1.nflxso.net/art/69c24/ecfc0c072506955c45aa259293f1a2f5c9869c24.jpg",
    "https://occ-0-1007-2794.1.nflxso.net/art/3940b/4c0badc82119dc19439e181f19234c074a83940b.jpg"
  ];

  List<String> title = [
    "Nosedive",
    "Playtest",
    "Shut Up and Dance",
    "San Junipero",
    "Men Against Fire"
  ];

  List<Widget> movies() {
    List<Widget> movieList = new List();

    for (int i = 0; i < 5; i++) {
      var movieItem = Padding(
        padding: EdgeInsets.symmetric(vertical: 25.0, horizontal: 12.0),
        child: Container(
          height: 220.0,
          width: 153.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: Colors.black12,
                blurRadius: 10.0,
                offset: Offset(0.0, 10.0),
              )
            ]
          ),
          child: Column(
            children: <Widget>[
              ClipRRect(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  topLeft: Radius.circular(20.0)
                ),
                child: Image.network(imgUrl[i], width: double.infinity,
                    fit: BoxFit.cover, height: 130.0,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(top: 4.0, left: 8.0, right: 8.0),
                child: Text(title[i],textAlign: TextAlign.center,
                style: TextStyle(
                  fontSize: 16.0, fontFamily: 'Montserrat'
                ),),
              ),
              Padding(padding: EdgeInsets.only(top: 3.0),
              child: Text(i ==0?"Episode 1" : ""),)
            ],
          ),
        ),
      );
      movieList.add(movieItem);
    }
    return movieList;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 360.0,
      margin: EdgeInsets.only(left: 65.0),
      child: Column(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: <Widget>[
                Text(
                  "Watch now",
                  style: TextStyle(
                    fontSize: 22.0,
                    fontFamily: 'Montserrat'
                  ),
                ),
                FlatButton(
                  child: Text('Viwe more'),
                  onPressed: (){},
                )
              ],
            ),
          ),

          Container(
            height: 250.0,
            child: ListView(
              scrollDirection: Axis.horizontal,
              children: movies(),
            ),
          )
        ],
      ),
    );
  }
}













