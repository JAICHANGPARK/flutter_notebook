import 'package:flutter/material.dart';

class UserProfile05 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: UserPage(),
      debugShowCheckedModeBanner: false,
    );
  }
}

List<String> photoData = [
  "https://cdn.pixabay.com/photo/2017/01/28/02/24/japan-2014619__340.jpg",
  "https://cdn.pixabay.com/photo/2019/03/29/10/14/sports-4088899__340.jpg",
  "https://cdn.pixabay.com/photo/2016/10/03/09/21/cute-1711129__340.jpg",
  "https://cdn.pixabay.com/photo/2017/08/19/05/43/dotonbori-2657500__340.jpg",
  "https://cdn.pixabay.com/photo/2016/06/10/05/08/japan-1447467_960_720.jpg",
  "https://cdn.pixabay.com/photo/2016/11/14/03/44/asia-1822521__340.jpg",
  "https://cdn.pixabay.com/photo/2014/07/24/05/25/pedestrians-400811__340.jpg",
  "https://cdn.pixabay.com/photo/2019/06/23/01/56/cityscape-4292702__340.jpg",
  "https://cdn.pixabay.com/photo/2019/04/04/18/29/hamburg-4103406__340.jpg",
  "https://cdn.pixabay.com/photo/2018/12/16/20/46/wave-3879331__340.jpg",
  "https://cdn.pixabay.com/photo/2015/07/27/22/55/girl-863686__340.jpg",
];

class UserPage extends StatefulWidget {
  @override
  _UserPageState createState() => _UserPageState();
}

class _UserPageState extends State<UserPage> with TickerProviderStateMixin{
  AnimationController animationController;
  Animation<double> animation;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
        animationController = AnimationController(vsync: this, duration: Duration(milliseconds: 2000));
        animation = CurvedAnimation(parent: animationController, curve: Curves.easeIn);
        animationController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Expanded(
            flex: 6,
            child: Stack(
              children: <Widget>[
                Positioned(
                  top: 0,
                  left: 0,
                  right: 0,
                  child: Transform.translate(
                    offset: Offset(0, -820),
                    child: Transform.scale(
                      scale: 1.5,
                      child: Container(
                        height: MediaQuery
                            .of(context)
                            .size
                            .height * 2,
                        decoration: BoxDecoration(
                            boxShadow: [
                              BoxShadow(color: Colors.black.withOpacity(0.2),
                                  blurRadius: 3, spreadRadius: 3)
                            ],
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.green,
                                  Colors.lightGreen,
                                  Colors.green.withOpacity(1),
                                ],
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                stops: [0, 0.8, 1],
                                tileMode: TileMode.clamp)),
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top: 24,
                  left: 24,
                  right: 24,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      IconButton(
                        icon: Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      ),
                      IconButton(
                        icon: Icon(
                          Icons.menu,
                          color: Colors.white,
                        ),
                        onPressed: () {},
                      )
                    ],
                  ),
                ),
                Positioned(
                  bottom: 0,
                  left: 116,
                  child: ScaleTransition(
                    child: Container(
                      height: 160,
                      width: 160,
                      decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.blue,
                          image: DecorationImage(
                              image: NetworkImage(
                                  "https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              fit: BoxFit.cover)),
                    ), scale: animation,
                  ),
                )
              ],
            ),
          ),
          Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(left: 48, right: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Text(
                    "Dreamwalker",
                    style: TextStyle(
                        fontSize: 24,
                        fontFamily: 'Montserrat',
                        fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 8,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(Icons.location_on, color: Colors.grey,
                        size: 18,),
                      Text('Tokyo, Japan | Seoul, Republic of Korea',
                        style: TextStyle(
                          color: Colors.grey,
                        ),),
                    ],
                  ),
                  SizedBox(height: 16,),
                  Text(
                    "I'm Flutter Lover, Keep Study Flutter blahblah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah blah ",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.grey,
                        fontSize: 10
                    ),)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 2,
            child: Padding(
              padding: const EdgeInsets.only(top: 16, bottom: 16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1.2k",
                        style: TextStyle(
                            fontSize: 24,
                            fontWeight: FontWeight.bold
                        ),),
                      Text("shots", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),)
                    ],
                  ),
                  SizedBox(width: 16),
                  VerticalDivider(
                    color: Colors.grey,
                  ),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("10.2k", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("Followers", style: TextStyle(
                          color: Colors.grey,
                          fontSize: 12
                      ),)
                    ],
                  ),
                  SizedBox(width: 16),
                  VerticalDivider(color: Colors.grey,),
                  SizedBox(width: 16),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Text("1", style: TextStyle(
                          fontSize: 24,
                          fontWeight: FontWeight.bold
                      ),),
                      Text("Following",
                        style: TextStyle(
                            color: Colors.grey,
                            fontSize: 12
                        ),)
                    ],
                  ),

                ],
              ),
            ),
          ),
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Row(
                children: <Widget>[
                  Text("Shots", style: TextStyle(
                      fontSize: 18,
                      fontWeight: FontWeight.bold
                  ),),
                  Spacer(),
                  Icon(Icons.menu, size: 28,
                  ),
                  Icon(Icons.apps, size: 28,
                    color: Colors.green,)
                ],
              ),
            ),
          ),
          Expanded(
            flex: 5,
            child: GridView.builder(
              shrinkWrap: true,

                itemCount: photoData.length,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 3,
                  crossAxisSpacing: 2,
                  mainAxisSpacing: 2
                ), itemBuilder: (context, index) {
              return Container(
                  decoration: BoxDecoration(
                    image: DecorationImage(image: NetworkImage(photoData[index]),
                    fit: BoxFit.cover)
                  ),
              );
            }),
          ),
        ],
      ),
    );
  }
}











































