




import 'package:flutter/material.dart';


class HomeMidUi extends StatefulWidget {
  @override
  _HomeMidUiState createState() => _HomeMidUiState();
}

class _HomeMidUiState extends State<HomeMidUi> {
  @override
  Widget build(BuildContext context) {
    return ListView(

      children: <Widget>[
        SizedBox(
          height: 15.0,
        ),
        getFoodItem(

          'Shoyu Ramen',
          'https://cdn.pixabay.com/photo/2017/04/04/00/36/japanese-food-2199962_960_720.jpg',
          'It consists of Chinese-style wheat noodles served in a meat or (occasionally)'
              ' fish-based broth, often flavored with soy sauce or miso, '
              'and uses toppings such as sliced pork, nori, menma, and scallions. ',
          750,
          25,
          25,
          4,
        ),
        SizedBox(height: 25.0,),
        Padding(
          padding: EdgeInsets.only(left: 125.0),
          child: Container(
            height: 1.0,
            color: Colors.grey,
          ),
        ),

        SizedBox(
          height: 15.0,
        ),
        getFoodItem(

          'Shoyu Ramen',
          'https://cdn.pixabay.com/photo/2017/04/04/00/36/japanese-food-2199962_960_720.jpg',
          'It consists of Chinese-style wheat noodles served in a meat or (occasionally)'
              ' fish-based broth, often flavored with soy sauce or miso, '
              'and uses toppings such as sliced pork, nori, menma, and scallions. ',
          750,
          25,
          25,
          4,
        ),
        SizedBox(height: 25.0,),
        Padding(
          padding: EdgeInsets.only(left: 125.0),
          child: Container(
            height: 1.0,
            color: Colors.grey,
          ),
        )
      ],


    );
  }

  getFoodItem(String dishName, String networkPath,
      String description, int calInfo, int distance,
      int cookingTime, int rating){

    return Padding(
      padding: EdgeInsets.only(left: 15.0),

      child: Row(
        children: <Widget>[
          Container(
            height: 100.0,
            width: 100.0,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50.0),
              image: DecorationImage(image:
              NetworkImage(networkPath), fit: BoxFit.cover)
            ),
          ),

          SizedBox(
            width: 10.0,
          )
          ,
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width - 125.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: <Widget>[
                    Text(dishName, style:
                      TextStyle(fontSize: 16.0,
                      fontWeight: FontWeight.bold),),

                    Container(
                      padding: EdgeInsets.only(left: 5.0),
                      height: 40.0,
                      width: 50.0,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20.0),
                          bottomLeft: Radius.circular(20.0),
                        ),

                        color: Colors.deepOrange

                      ),

                      child: Center(
                        child: Icon(
                          Icons.favorite_border,
                          color: Colors.white,
                        ),
                      ),
                    )
                  ],
                ),
              ),

              Row(
                children: <Widget>[
                  getRatedStar(rating, 1),
                  getRatedStar(rating, 2),
                  getRatedStar(rating, 3),
                  getRatedStar(rating, 4),
                  getRatedStar(rating, 5),

                  SizedBox(width: 7.0,),
                  Text(rating.toString(),
                  style: TextStyle(
                    color: Colors.yellow[800],
                    fontSize: 17.0
                  ),
                  )
                ],
              ),
              SizedBox(height: 10.0,),
              Text(
                'About dishes',
                style: TextStyle(
                  fontSize: 12.0,
                  color: Color(0xffc6cc40),
                ),
              ),
              SizedBox(height: 5.0,),
              Container(
                width: MediaQuery.of(context).size.width - 130.0,
                child: Text(description,
                style: TextStyle(
                  fontSize: 14.0,
                  color: Colors.grey
                ),
                ),
              ),

              SizedBox(height: 10.0,),

              Row(
                children: <Widget>[
                  Icon(Icons.fastfood, color: Colors.grey,),
                  Text(
                    calInfo.toString() + 'kcal',
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),

                  SizedBox(width: 7.0,),
                  Icon(Icons.location_on, color: Colors.grey,),
                  Text(
                    distance.toString() + "km",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  ),

                  SizedBox(
                    width: 7.0,
                  ),

                  Icon(Icons.timer, color: Colors.grey,),
                  Text(
                    cookingTime.toString() + "mins",
                    style: TextStyle(
                      color: Colors.grey
                    ),
                  )
                ],
              )

            ],
          )
        ],
      ),

    );

  }


  getRatedStar(int rate, int index){
    if(index <= rate){
      return Icon(Icons.star, color: Colors.yellow[600],);
    }else{
      return Icon(Icons.star, color: Colors.grey,);
    }
  }
}






















