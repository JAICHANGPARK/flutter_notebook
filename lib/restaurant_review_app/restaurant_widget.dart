

import 'package:flutter/material.dart';

class RestaurantWidget extends StatefulWidget {
  @override
  _RestaurantWidgetState createState() => _RestaurantWidgetState();
}

class _RestaurantWidgetState extends State<RestaurantWidget> {
  @override
  Widget build(BuildContext context) {
    return GridView.count(

        crossAxisCount: 2,
      primary: false,
      padding: EdgeInsets.all(10.0),
      crossAxisSpacing: 12.0,
      mainAxisSpacing: 12.0,
      shrinkWrap: true,
      children: <Widget>[
        _buildCard('Tropical fruits', 'Greyish day', '20-05-19', '5',
            'https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg'),
        _buildCard('Tropical fruits', 'Greyish day', '20-05-19', '5',
            'https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg'),
        _buildCard('Tropical fruits', 'Greyish day', '20-05-19', '5',
            'https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg'),
        _buildCard('Tropical fruits', 'Greyish day', '20-05-19', '5',
            'https://cdn.pixabay.com/photo/2014/10/19/20/59/hamburger-494706_960_720.jpg')
      ],
    );
  }

  _buildCard(String restaurantName, String type,
      String date, String rating, String imgPath){
    return Container(
      padding: EdgeInsets.all(7.0),
      height: 150.0,
      width: 150.0,
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 3.0,
            spreadRadius: 3.0,
            color: Colors.grey.withOpacity(0.20)
          )
        ]
      ),
      child: Column(
        children: <Widget>[
          Stack(
            children: <Widget>[
              Container(
                height: 100.0,
                width: 140.0,
                decoration: BoxDecoration(
                  image: DecorationImage(image: NetworkImage(imgPath),
                  fit: BoxFit.cover)
                ),
              ),
              Positioned(
                top: 60.0,
                left: 100.0,
                child: Container(
                  height: 25.0,
                  width: 25.0,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12.5),
                    color: Colors.white,
                  ),
                  child: Row(
                    children: <Widget>[
                      SizedBox(width: 4.0,),
                      Text(rating,
                      style: TextStyle(
                        color: Colors.red,
                        fontSize: 11.0
                      ),),
                      Icon(Icons.star,
                      color: Colors.red,
                      size: 11.0,)
                    ],
                  ),
                ),
              )
            ],
          ),
          SizedBox(height: 10.0,),
          Text(restaurantName,
          style: TextStyle(
            color: Colors.pink,
          ),),
          SizedBox(height: 10.0,),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Text(
                type,
                style: TextStyle(
                  color: Colors.grey,
                  fontSize: 11.0
                ),
              ),
              Text(
                date,
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 11.0
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}






















