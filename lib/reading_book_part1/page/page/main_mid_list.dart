


import 'package:flutter/material.dart';

class MainMidUi extends StatefulWidget {
  @override
  _MainMidUiState createState() => _MainMidUiState();
}

class _MainMidUiState extends State<MainMidUi> {
  var imgList=[
    "https://cdn.pixabay.com/photo/2019/02/03/20/06/girl-3973375_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/12/02/03/08/people-talking-1876726_960_720.jpg",
    "https://cdn.pixabay.com/photo/2016/11/03/16/34/woman-1795054_960_720.jpg",
    "https://cdn.pixabay.com/photo/2019/01/25/11/18/girl-3954232_960_720.jpg"
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 240.0,
        width: double.infinity,

        child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: imgList.length,
            itemBuilder: (context, index){
              return cardTile(imgList[index]);
            }),
      ),
    );
  }

  Widget cardTile(String imgPath){
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 240.0,
        width: 120.0,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Container(
              height: 180.0,
              width: 120.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7.0),
                boxShadow: [
                  BoxShadow(
                      color: Colors.black.withOpacity(0.5),
                      offset: Offset(0.0, 2.0),
                      blurRadius: 2.0,
                      spreadRadius: 1.0)
                ],
                image: DecorationImage(
                    image: NetworkImage(
                        imgPath),
                    fit: BoxFit.cover),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "Lobe Or Money",
                style: TextStyle(
                    fontSize: 12.0, color: Colors.black),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0),
              child: Text(
                "210 Booking",
                style: TextStyle(
                    fontSize: 10.0, color: Colors.grey),
              ),
            )
          ],
        ),
      ),
    );
  }
}


