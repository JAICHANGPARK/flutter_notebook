import 'package:flutter/material.dart';

class EventsManagementApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MainPage(),
    );
  }
}

class MainPage extends StatefulWidget {
  @override
  _MainPageState createState() => _MainPageState();
}

class _MainPageState extends State<MainPage> {
  TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: <Widget>[
          //TODO Background
          Positioned(
            top: 0,
            left: 0,
            bottom: 0,
            right: 0,
            child: Row(
              children: <Widget>[
                Expanded(
                  child: Container(
                    color: Color(0xff4d6ee5),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color(0xff515ae3),
                  ),
                )
              ],
            ),
          ),
          //TODO Implement Appbar
          Positioned(
            top: 32,
            left: 16,
            right: 16,
            child: Container(
              height: 32,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  IconButton(
                    icon: Icon(Icons.menu),
                    color: Colors.white,
                    onPressed: () {},
                  ),
                  Container(
                    height: 32,
                    width: 32,
                    decoration: BoxDecoration(
                      color: Colors.redAccent,
                      shape: BoxShape.circle,
                    ),
                    child: Align(
                      alignment: Alignment.topRight,
                      child: Container(
                        height: 12,
                        width: 12,
                        decoration: BoxDecoration(
                            color: Color(0xff0022A1), shape: BoxShape.circle),
                        child: Center(
                          child: Text(
                            "2",
                            style: TextStyle(color: Colors.white, fontSize: 10),
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          Positioned(
            left: 24,
            right: 16,
            top: 86,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Hey Dreamwalker",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 16),
                Text(
                  "Your Upcoming Events...",
                  style: TextStyle(
                    color: Colors.white.withOpacity(0.7),
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 32),
                Container(
                  height: 48,
                  decoration: BoxDecoration(
                      color: Color(0xff0022A1),
                      borderRadius: BorderRadius.circular(35)),
                  child: TextField(
                    controller: _textEditingController,
                    decoration: InputDecoration(
                        hintText: "Search your any events",
                        hintStyle: TextStyle(
                          color: Colors.white.withOpacity(0.7),
                        ),
                        enabledBorder: InputBorder.none,
                        border: InputBorder.none,
                        prefixIcon: Container(
                          height: 48,
                          width: 48,
                          margin: EdgeInsets.only(left: 2, top: 6, bottom: 6),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            gradient: LinearGradient(
                                colors: [
                                  Colors.lightBlueAccent,
                                  Colors.indigo,
                                ],
                                begin: Alignment.bottomLeft,
                                end: Alignment.topRight,
                                stops: [0, 0.9]),
                          ),
                          child: Center(
                            child: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                          ),
                        )),
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 24,
            right: 16,
            top: 264,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Featured Events",
                  style: TextStyle(
                      color: Colors.white.withOpacity(0.8),
                      fontSize: 23,
                      fontWeight: FontWeight.w700),
                ),
                SizedBox(
                  height: 16,
                ),
                Container(
                  height: 100,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.business_center,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Office",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.shop,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Birthday",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.people_outline,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "wedding",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Container(
                            height: 58,
                            width: 58,
                            decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              shape: BoxShape.circle,
                            ),
                            child: Center(
                              child: Icon(
                                Icons.restaurant_menu,
                                color: Colors.white,
                                size: 28,
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 16,
                          ),
                          Text(
                            "Dinner",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            left: 24,
            right: 24,
            top: 410,
            bottom: 0,
            child: ListView(
              scrollDirection: Axis.vertical,
              shrinkWrap: true,
              children: <Widget>[
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/09/29/11/36/listen-1702648_960_720.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2),
                              BlendMode.darken))),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 16,
                        left: 16,
                        right: 0,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              radius: 18,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xff0022A1),
                              child: Center(
                                child: Text("10"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Office Meeting", style: TextStyle(
                              color: Colors.white,
                              fontWeight: FontWeight.w700,
                              fontSize: 18
                            ),),
                            SizedBox(height: 8,),
                            Text("10:00 AM ~ 11:00AM", style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: Container(
                          height: 80,
                          width: 72,
                          decoration: BoxDecoration(
                            color: Color(0xff0022A1),
                            borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text("20",
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold
                                  ),),
                                ),
                              ),
                              Expanded(
                                  flex:2,
                                child: Container(
                                  decoration: BoxDecoration(
                                    color: Colors.lightBlueAccent,
                                    borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("Jun",style: TextStyle(
                                      color: Colors.white,
                                      fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/09/29/11/36/listen-1702648_960_720.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2),
                              BlendMode.darken))),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 16,
                        left: 16,
                        right: 0,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              radius: 18,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xff0022A1),
                              child: Center(
                                child: Text("10"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Office Meeting", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),),
                            SizedBox(height: 8,),
                            Text("10:00 AM ~ 11:00AM", style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: Container(
                          height: 80,
                          width: 72,
                          decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text("20",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ),
                              Expanded(
                                flex:2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("Jun",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  height: 200,
                  decoration: BoxDecoration(
                      color: Colors.pink,
                      borderRadius: BorderRadius.circular(16),
                      image: DecorationImage(
                          image: NetworkImage(
                              "https://cdn.pixabay.com/photo/2016/09/29/11/36/listen-1702648_960_720.jpg"),
                          fit: BoxFit.cover,
                          colorFilter: ColorFilter.mode(
                              Colors.black.withOpacity(0.2),
                              BlendMode.darken))),
                  child: Stack(
                    children: <Widget>[
                      Positioned(
                        top: 16,
                        left: 16,
                        right: 0,
                        child: Row(
                          children: <Widget>[
                            CircleAvatar(
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                              radius: 18,
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundImage: NetworkImage("https://avatars2.githubusercontent.com/u/19484515?s=460&v=4"),
                            ),
                            SizedBox(
                              width: 4,
                            ),
                            CircleAvatar(
                              radius: 18,
                              backgroundColor: Color(0xff0022A1),
                              child: Center(
                                child: Text("10"),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 16,
                        bottom: 16,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: <Widget>[
                            Text("Office Meeting", style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.w700,
                                fontSize: 18
                            ),),
                            SizedBox(height: 8,),
                            Text("10:00 AM ~ 11:00AM", style: TextStyle(
                                color: Colors.white,
                                fontSize: 18
                            ),),
                          ],
                        ),
                      ),
                      Positioned(
                        right: 16,
                        bottom: 16,
                        child: Container(
                          height: 80,
                          width: 72,
                          decoration: BoxDecoration(
                              color: Color(0xff0022A1),
                              borderRadius: BorderRadius.circular(16)
                          ),
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 3,
                                child: Center(
                                  child: Text("20",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold
                                    ),),
                                ),
                              ),
                              Expanded(
                                flex:2,
                                child: Container(
                                  decoration: BoxDecoration(
                                      color: Colors.lightBlueAccent,
                                      borderRadius: BorderRadius.circular(8)
                                  ),
                                  child: Center(
                                    child: Text("Jun",style: TextStyle(
                                        color: Colors.white,
                                        fontWeight: FontWeight.bold
                                    ),),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
























