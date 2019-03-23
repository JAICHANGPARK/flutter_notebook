import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_notebook/national_app/more_detail_view.dart';

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
    _animation = Tween<double>(begin: 400, end: 350).animate(
        CurvedAnimation(parent: _animationController, curve: Curves.easeIn))
      ..addListener(() {
        setState(() {});
      })
      ..addStatusListener((state) => print('$state'));

    Future.delayed(Duration(milliseconds: 10))
        .then((_) => _animationController.forward());
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
              height: 500,
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(17),
                      topRight: Radius.circular(17))),
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        "Hong Kong",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            fontSize: 28,
                            fontWeight: FontWeight.bold),
                      ),
                      SizedBox(
                        height: 8,
                      ),
                      Text(
                        "complete guide".toUpperCase(),
                        style:
                            TextStyle(color: Colors.grey, letterSpacing: 4.0),
                      )
                    ],
                  ),
                  SizedBox(
                    height: 32,
                  ),
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
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey.withOpacity(0.2)),
                            child: Center(
                              child: Icon(
                                Icons.remove_red_eye,
                                color: Colors.grey,
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
//                            color: Colors.red,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/07/12/21/43/audrey-hepburn-842495_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/05/03/19/13/hong-kong-751596_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          InkWell(
                            onTap: (){
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (context)
                                => MoreDetailPage())
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.symmetric(horizontal: 4.0),
                              height: 120,
                              width: 80,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8.0),
                                  color: Colors.grey,
                                  image: DecorationImage(
                                      image: NetworkImage(
                                          "https://cdn.pixabay.com/photo/2019/01/02/04/59/hong-kong-3908078_960_720.jpg"),
                                      fit: BoxFit.cover)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2017/05/06/05/59/hong-kong-2288999_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 4.0),
                            height: 120,
                            width: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(8.0),
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2015/03/18/03/08/architecture-678673_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          )
                        ],
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 8.0,
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          "Food",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2014/10/26/12/03/dumplings-503775_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2014/10/26/12/03/daifuku-503776_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2014/10/26/12/02/meat-503772_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.red,
                                borderRadius: BorderRadius.circular(8.0),
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://cdn.pixabay.com/photo/2018/10/16/17/40/hello-kitty-3752041_960_720.jpg"),
                                    fit: BoxFit.cover)),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Divider(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Padding(
                        padding: const EdgeInsets.only(left: 32.0),
                        child: Text(
                          "What to see",
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 18,
                              fontFamily: 'Montserrat',
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      Row(
                        children: <Widget>[
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 2.0),
                            height: 20,
                            width: 40,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(8.0)),
                            child: Text("104"),
                          ),
                          IconButton(
                            onPressed: () {},
                            icon: Icon(
                              Icons.arrow_forward_ios,
                              color: Colors.grey,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
