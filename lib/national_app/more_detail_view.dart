import 'package:flutter/material.dart';
import 'package:flutter_notebook/national_app/more_detail_info.dart';

class MoreDetailPage extends StatefulWidget {
  @override
  _MoreDetailPageState createState() => _MoreDetailPageState();
}

class _MoreDetailPageState extends State<MoreDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: <Widget>[
            Positioned(
              top: 0,
              left: 0,
              right: 0,
              bottom: 0,
              child: Image.network(
                "https://cdn.pixabay.com/photo/2019/01/02/04/59/hong-kong-3908078_960_720.jpg",
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
              bottom: 170,
              left: 24.0,
              child: Text(
                "Hong Kong museum",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
            Positioned(
              bottom: 140,
              left: 24.0,
              child: Text(
                "of graphic design",
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 28,
                    fontWeight: FontWeight.bold,
                    letterSpacing: 2.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
            Positioned(
              bottom: 100,
              left: 24.0,
              child: Text(
                "of graphic design",
                style: TextStyle(
                    color: Colors.grey,
                    fontSize: 22,
                    fontWeight: FontWeight.w400,
                    letterSpacing: 2.0,
                    fontFamily: 'Montserrat'),
              ),
            ),
            Positioned(
              bottom: 20,
              left: 24.0,
              child: InkWell(
                onTap: (){
              Navigator.of(context).push(
                MaterialPageRoute(builder: (context)=>MoreMoreDetailPage())
              );
                },
                child: Hero(
                  tag: "more_info",
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colors.grey.withOpacity(0.2),
                      borderRadius: BorderRadius.circular(8.0),

                    ),
                    child: Icon(
                      Icons.more_horiz,
                      color: Colors.white,
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
