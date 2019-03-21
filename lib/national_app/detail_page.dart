import 'dart:async';

import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  @override
  _DetailPageState createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage>
    with SingleTickerProviderStateMixin {
  AnimationController _animationController;
  Animation<double> _animation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _animationController =
        AnimationController(vsync: this, duration: Duration(milliseconds: 700));
    _animation = _animation = Tween<double>(begin: 400, end: 350).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn))
    ..addListener((){
      setState(() {

      });
    })
    ..addStatusListener((state) => print('$state'));

    Future.delayed(Duration(milliseconds: 10)).then((_) =>  _animationController.forward());

  }
  @override
  void dispose() {
    // TODO: implement dispose
    _animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          Hero(
            tag: "detail_id",
            child: Container(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: NetworkImage(
                        "https://cdn.pixabay.com/photo/2015/11/07/11/51/china-1031557_960_720.jpg",
                      ),
                      fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            top: 60,
            left: 16,
            right: 16,
            child: Container(
              height: 60,
              width: MediaQuery.of(context).size.width,
//              color: Colors.grey,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Container(
                    height: 40,
                    width: 40,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.all(Radius.circular(8)),
                        color: Colors.black.withOpacity(0.2)),
                    child: IconButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      icon: Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.star,
                      color: Colors.white,
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            top: _animation.value,
            child: Container(
              height: 400,
              width: MediaQuery.of(context).size.width,

              decoration: BoxDecoration(
                  color: Colors.white,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(17),
                  topRight: Radius.circular(17)
                )
              ),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("Hong Kong",
                      style: TextStyle(
                        fontFamily: 'Montserrat',
                        fontSize: 28,
                        fontWeight: FontWeight.bold
                      ),),
                      SizedBox(height: 8,),
                      Text("complete guide".toUpperCase(),
                      style: TextStyle(
                        color: Colors.grey,
                        letterSpacing: 4.0
                      ),)
                    ],
                  ),
                  SizedBox(height: 32,),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 24.0),
                      child: Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            color: Colors.red,
                          )
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
